import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/ui/features/favourites/bloc/favourites_bloc.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokedex_error_widget.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokedex_loading_widget.dart';
import 'package:pokedex/ui/features/pokedex/widget/pokemon_card.dart';
import 'package:pokedex/utils/const.dart';

class PokedexFavouritesWidget extends StatefulWidget {
  final Map<Pokemon, Color> colorsCache;
  const PokedexFavouritesWidget({required this.colorsCache, Key? key}) : super(key: key);

  @override
  State<PokedexFavouritesWidget> createState() => _PokedexFavouritesWidgetState();
}

class _PokedexFavouritesWidgetState extends State<PokedexFavouritesWidget> {
  @override
  void initState() {
    super.initState();

    context.read<FavouritesBloc>().add(const FavouritesEvent.getFavouritePokemons());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: (_) => const PokedexLoadingWidget(),
          error: (e, _) => PokedexErrorWidget(exception: e),
          favouritePokemons: (pokemons, ids) => GridView(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            gridDelegate: Const.gridDelegate,
            children: pokemons
                .map((pokemon) => PokemonCard(pokemon: pokemon, colorsCache: widget.colorsCache))
                .toList(),
          ),
          orElse: () => Container(color: Colors.red),
        );
      },
    );
  }
}
