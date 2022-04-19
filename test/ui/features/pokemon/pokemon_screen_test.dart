import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:pokedex/ui/features/favourites/bloc/favourites_bloc.dart';
import 'package:pokedex/ui/features/pokemon/pokemon_screen.dart';
import 'package:pokedex/utils/generator.dart';

import '../../../di_configuration.dart';
import '../../../mocks.dart';
import '../../golden_test_utils.dart';

void main() {
  setUp(configureTestDependencies);

  group('Pokemon Screen Test', () {
    testGoldens('Pokemon Screen Test', (tester) async {
      final favouritesBloc = FavouritesBlocMock();
      const favouritesState = FavouritesState.loading(ids: [1, 2, 3]);
      whenListen(favouritesBloc, Stream.value(favouritesState), initialState: favouritesState);

      await goldenTest(
        tester,
        widget: BlocProvider<FavouritesBloc>(
          create: (_) => favouritesBloc,
          child: PokemonScreen(
            pokemon: Generator.genPokemon(),
            color: Colors.green.withOpacity(0.5),
          ),
        ),
        fileName: 'pokemon_screen',
      );
    });
  });
}
