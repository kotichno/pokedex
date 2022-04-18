import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/ui/screens/error/error_screen.dart';
import 'package:pokedex/ui/screens/pokedex/pokedex_screen.dart';

const _pokedexScreenPath = '/pokedex';

class AppRouter extends GoRouter {
  AppRouter()
      : super(
          initialLocation: _pokedexScreenPath,
          routes: [
            GoRoute(path: _pokedexScreenPath, builder: _pokedexScreenBuilder),
          ],
          errorBuilder: (context, state) => ErrorScreen(error: state.error),
          debugLogDiagnostics: true,
        );

  void openPokedexScreen() => go(_pokedexScreenPath);

  static Widget _pokedexScreenBuilder(BuildContext context, GoRouterState state) {
    return const PokedexScreen();
  }
}
