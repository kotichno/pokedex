import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/l10n/generated/l10n.dart';
import 'package:pokedex/ui/features/favourites/bloc/favourites_bloc.dart';
import 'package:pokedex/ui/features/pokemon/widget/pokemon_app_bar.dart';
import 'package:pokedex/ui/features/pokemon/widget/pokemon_info_panel.dart';
import 'package:pokedex/ui/features/pokemon/widget/pokemon_stats_widget.dart';
import 'package:pokedex/ui/theme/poke_colors.dart';
import 'package:pokedex/ui/theme/text_styles.dart';

class PokemonScreen extends StatelessWidget {
  final Pokemon pokemon;
  final Color? color;

  const PokemonScreen({
    required this.pokemon,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: SafeArea(
        left: false,
        right: false,
        child: Scaffold(
          floatingActionButton: _Fab(pokemon: pokemon),
          body: CustomScrollView(
            slivers: [
              PokemonAppBar(pokemon: pokemon, color: color),
              SliverList(
                delegate: SliverChildListDelegate([
                  PokemonInfoPanel(pokemon: pokemon),
                  const SizedBox(height: 8),
                  PokemonStatsWidget(pokemon: pokemon),
                  const SizedBox(height: 20),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Fab extends StatelessWidget {
  final Pokemon pokemon;

  const _Fab({
    required this.pokemon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        final isFavourite = state.ids.contains(pokemon.id);

        return FloatingActionButton.extended(
          backgroundColor: isFavourite ? PokeColors.whiteBlue : PokeColors.blue,
          onPressed: () {
            if (isFavourite) {
              context.read<FavouritesBloc>().add(FavouritesEvent.removeFavourite(pokemon));
            } else {
              context.read<FavouritesBloc>().add(FavouritesEvent.addFavourite(pokemon));
            }
          },
          label: Text(
            isFavourite ? S.of(context).removeFavourite : S.of(context).addFavourite,
            style: TextStyles.bold14.copyWith(color: isFavourite ? PokeColors.blue : Colors.white),
          ),
        );
      },
    );
  }
}
