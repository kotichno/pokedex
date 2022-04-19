import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:pokedex/ui/features/favourites/bloc/favourites_bloc.dart';
import 'package:pokedex/ui/features/pokedex/bloc/pokedex_bloc.dart';
import 'package:pokedex/ui/features/pokedex/pokedex_screen.dart';
import 'package:pokedex/utils/generator.dart';

import '../../../di_configuration.dart';
import '../../../mocks.dart';
import '../../golden_test_utils.dart';

void main() {
  setUp(configureTestDependencies);

  group('Pokedex Screen Test', () {
    testGoldens('Pokedex Screen Test', (tester) async {
      final bloc = PokedexBlocMock();

      final state = PokedexState.pokemons(
        pokemons: [
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
          Generator.genPokemon(),
        ],
      );
      whenListen(bloc, Stream.value(state), initialState: state);

      final favouritesBloc = FavouritesBlocMock();
      const favouritesState = FavouritesState.loading(ids: [1, 2, 3]);
      whenListen(favouritesBloc, Stream.value(favouritesState), initialState: favouritesState);

      await goldenTest(
        tester,
        widget: BlocProvider<FavouritesBloc>(
          create: (_) => favouritesBloc,
          child: BlocProvider<PokedexBloc>(
            create: (_) => bloc,
            child: const PokedexView(),
          ),
        ),
        fileName: 'pokedex_screen',
      );
    });
  });
}
