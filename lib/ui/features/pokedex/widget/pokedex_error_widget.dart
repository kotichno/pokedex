import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/assets/images.dart';
import 'package:pokedex/l10n/generated/l10n.dart';
import 'package:pokedex/ui/features/pokedex/bloc/pokedex_bloc.dart';
import 'package:pokedex/ui/theme/poke_colors.dart';
import 'package:pokedex/utils/const.dart';

class PokedexErrorWidget extends StatelessWidget {
  final Exception exception;
  const PokedexErrorWidget({
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
