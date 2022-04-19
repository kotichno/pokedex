import 'package:bloc_test/bloc_test.dart';
import 'package:pokedex/ui/features/favourites/bloc/favourites_bloc.dart';
import 'package:pokedex/ui/features/pokedex/bloc/pokedex_bloc.dart';

class PokedexBlocMock extends MockBloc<PokedexEvent, PokedexState> implements PokedexBloc {}

class FavouritesBlocMock extends MockBloc<FavouritesEvent, FavouritesState>
    implements FavouritesBloc {}
