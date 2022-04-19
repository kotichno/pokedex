import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex/di/di.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/interactor/pokemon/pokemon_interactor.dart';
import 'package:pokedex/ui/features/favourites/bloc/favourites_bloc.dart';
import 'package:pokedex/ui/features/pokedex/bloc/pokedex_bloc.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokedex_app_bar.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokedex_error_widget.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokedex_favourites_widget.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokedex_loading_widget.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokedex_tab_bar.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokedex_widget.dart';
import 'package:pokedex/utils/const.dart';

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
    _pageController.dispose();

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
              pokemons: (pokemons) {
                final isLastPage = pokemons.length < Const.pageSize;

                if (isLastPage) {
                  _pagingController.appendLastPage(pokemons);
                } else {
                  _pagingController.appendPage(pokemons, _pagingController.nextPageKey! + 1);
                }
              },
              pageError: (error) => _pagingController.error = error,
            );
          },
          child: Scaffold(
            appBar: const PokedexAppBar(),
            body: Column(
              children: [
                const SizedBox(height: 2),
                IgnorePointer(
                  ignoring: !state.isPokemons,
                  child: BlocBuilder<FavouritesBloc, FavouritesState>(
                    builder: (context, state) {
                      return PokedexTabBar(
                        controller: _tabController,
                        onTap: _changePage,
                        favouritesCount: state.ids.length,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: state.maybeWhen(
                    loading: PokedexLoadingWidget.new,
                    error: (e) => PokedexErrorWidget(exception: e),
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
    _pageController.animateToPage(
      page,
      duration: Const.animationDuration,
      curve: Const.animationCurve,
    );
    _tabController.animateTo(
      page,
      duration: Const.animationDuration,
      curve: Const.animationCurve,
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
        PokedexWidget(pagingController: widget.pagingController, colorsCache: _colorsCache),
        PokedexFavouritesWidget(colorsCache: _colorsCache),
      ],
    );
  }
}
