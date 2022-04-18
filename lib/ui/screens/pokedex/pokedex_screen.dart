import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex/assets/images.dart';
import 'package:pokedex/assets/svg_images.dart';
import 'package:pokedex/di/di.dart';
import 'package:pokedex/domain/pokemon.dart';
import 'package:pokedex/interactor/pokemon/pokemon_interactor.dart';
import 'package:pokedex/l10n/generated/l10n.dart';
import 'package:pokedex/ui/screens/pokedex/bloc/pokedex_bloc.dart';
import 'package:pokedex/ui/theme/poke_colors.dart';
import 'package:pokedex/ui/theme/text_styles.dart';
import 'package:pokedex/ui/widget/cached_color_image.dart';
import 'package:pokedex/utils/const.dart';
import 'package:pokedex/utils/formats.dart';
import 'package:pokedex/utils/string_extension.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

const _animationDuration = Duration(milliseconds: 200);
const _animationCurve = Curves.easeInOut;

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokedexBloc(pokemonInteractor: getIt<PokemonInteractor>()),
      child: const PokedexView(),
    );
  }
}

@visibleForTesting
class PokedexView extends StatefulWidget {
  const PokedexView({Key? key}) : super(key: key);

  @override
  State<PokedexView> createState() => _PokedexViewState();
}

class _PokedexViewState extends State<PokedexView> with TickerProviderStateMixin {
  late final TabController _tabController;
  final _pagingController = PagingController<int, Pokemon>(firstPageKey: Const.initialPage);
  final _pageController = PageController();

  @override
  void initState() {
    super.initState();

    context.read<PokedexBloc>().add(const PokedexEvent.loadPokedex(page: Const.initialPage));
    _tabController = TabController(length: 2, vsync: this);
    _pagingController.addPageRequestListener((page) {
      context.read<PokedexBloc>().add(PokedexEvent.loadPokedex(page: page));
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pagingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokedexBloc, PokedexState>(
      builder: (context, state) {
        return BlocListener<PokedexBloc, PokedexState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              initial: (pokemons) {
                final isLastPage = pokemons.length < Const.pageSize;
                if (isLastPage) {
                  _pagingController.appendLastPage(pokemons);
                } else {
                  _pagingController.appendPage(pokemons, _pagingController.nextPageKey! + 1);
                }
              },
              pageError: (error) {
                _pagingController.error = error;
              },
            );
          },
          child: Scaffold(
            appBar: const _AppBar(),
            body: Column(
              children: [
                const SizedBox(height: 2),
                IgnorePointer(
                  ignoring: !state.isInitial,
                  child: _TabBar(
                    controller: _tabController,
                    onTap: _changePage,
                    favouritesCount: 1, // TODO(me): pass relevant data
                  ),
                ),
                Expanded(
                  child: state.maybeWhen(
                    loading: _LoadingWidget.new,
                    error: (e) => _ErrorWidget(exception: e),
                    orElse: () => _InitialWidget(
                      pagingController: _pagingController,
                      pageController: _pageController,
                      onPageChanged: _changePage,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _changePage(int page) {
    _pageController.animateToPage(page, duration: _animationDuration, curve: _animationCurve);
    _tabController.animateTo(page, duration: _animationDuration, curve: _animationCurve);
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _InitialWidget extends StatefulWidget {
  final PagingController<int, Pokemon> pagingController;
  final PageController pageController;
  final ValueChanged<int> onPageChanged;

  const _InitialWidget({
    required this.pagingController,
    required this.pageController,
    required this.onPageChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<_InitialWidget> createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<_InitialWidget> {
  final _colorsCache = <Pokemon, Color>{};

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageController,
      onPageChanged: widget.onPageChanged,
      children: [
        PagedGridView(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          pagingController: widget.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Pokemon>(
            itemBuilder: (_, item, __) {
              return _PokemonCard(
                pokemon: item,
                colorsCache: _colorsCache,
              );
            },
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 10,
            childAspectRatio: 0.59,
          ),
        ),
        const Center(
          child: Text('Favourites'),
        ),
      ],
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  final Exception exception;
  const _ErrorWidget({
    required this.exception,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Images.error),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context
                  .read<PokedexBloc>()
                  .add(const PokedexEvent.loadPokedex(page: Const.initialPage));
            },
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(PokeColors.blue)),
            child: Text(S.of(context).reload),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size(double.infinity, 44);

  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            SvgImages.pokedex,
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 24),
          Text(
            S.of(context).pokedexTitle,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ],
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  final TabController controller;
  final ValueChanged<int> onTap;
  final int favouritesCount;

  const _TabBar({
    required this.controller,
    required this.onTap,
    required this.favouritesCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      color: Colors.white,
      child: TabBar(
        controller: controller,
        tabs: [
          Text(
            S.of(context).allPokemon,
            style: controller.index == 0 ? TextStyles.medium16 : TextStyles.regular16,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.of(context).favourites,
                style: controller.index == 1 ? TextStyles.medium16 : TextStyles.regular16,
              ),
              if (favouritesCount > 0) ...[
                const SizedBox(width: 4),
                _TabFavouritesIndicator(count: favouritesCount),
              ],
            ],
          ),
        ],
        onTap: onTap,
        indicator: MaterialIndicator(
          color: PokeColors.blue,
        ),
        indicatorWeight: 1,
      ),
    );
  }
}

class _TabFavouritesIndicator extends StatelessWidget {
  final int count;
  const _TabFavouritesIndicator({
    required this.count,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 20,
        minHeight: 20,
        maxHeight: 20,
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: PokeColors.blue,
        ),
        padding: const EdgeInsets.fromLTRB(6, 0, 6, 2),
        child: Center(
          child: Text(
            '$count',
            style: TextStyles.regular12.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _PokemonCard extends StatefulWidget {
  final Pokemon pokemon;
  final Map<Pokemon, Color> colorsCache;

  const _PokemonCard({
    required this.pokemon,
    required this.colorsCache,
    Key? key,
  }) : super(key: key);

  @override
  State<_PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<_PokemonCard> {
  Color? color;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AnimatedContainer(
                duration: _animationDuration,
                curve: _animationCurve,
                decoration: BoxDecoration(
                  color: widget.colorsCache[widget.pokemon]?.withOpacity(0.5),
                ),
                child: Center(
                  child: CachedColorImage(
                    imageUrl: widget.pokemon.img,
                    needDetect: !widget.colorsCache.containsKey(widget.pokemon),
                    onColorDetected: (color) {
                      setState(() {
                        widget.colorsCache[widget.pokemon] = color;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                Formats.formatId(widget.pokemon.id),
                style: TextStyles.regular12.copyWith(color: PokeColors.grey),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                widget.pokemon.name.capitalize(),
                style: TextStyles.semiBold14.copyWith(color: PokeColors.black87),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                Formats.formatPokemonTypes(widget.pokemon.types),
                style: TextStyles.regular12.copyWith(color: PokeColors.grey),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
