import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/ui/features/error/error_screen.dart';
import 'package:pokedex/ui/features/pokedex/pokedex_screen.dart';
import 'package:pokedex/ui/features/pokemon/pokemon_screen.dart';

const _pokedexScreenPath = '/pokedex';
const _pokemonScreenPath = 'pokemon';

class AppRouter extends GoRouter {
  AppRouter()
      : super(
          initialLocation: _pokedexScreenPath,
          routes: [
            GoRoute(
              path: _pokedexScreenPath,
              builder: _pokedexScreenBuilder,
              routes: [
                GoRoute(
                  path: _pokemonScreenPath,
                  builder: _pokemonScreenBuilder,
                ),
              ],
            ),
          ],
          errorBuilder: (context, state) => ErrorScreen(error: state.error),
          debugLogDiagnostics: true,
        );

  static AppRouter of(BuildContext context) => GoRouter.of(context) as AppRouter;

  void openPokedexScreen() => go(_pokedexScreenPath);

  void openPokemonScreen(Pokemon pokemon, Color? color) => go(
        '$_pokedexScreenPath/$_pokemonScreenPath',
        extra: [pokemon, color],
      );

  static Widget _pokedexScreenBuilder(BuildContext context, GoRouterState state) {
    return const PokedexScreen();
  }

  static Widget _pokemonScreenBuilder(BuildContext context, GoRouterState state) {
    final params = state.extra as List;
    return PokemonScreen(
      pokemon: params[0] as Pokemon,
      color: params[1] as Color?,
    );
  }
}
