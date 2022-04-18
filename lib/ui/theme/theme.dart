import 'package:flutter/material.dart';
import 'package:pokedex/ui/theme/poke_colors.dart';
import 'package:pokedex/ui/theme/text_styles.dart';

final appTheme = ThemeData(
  fontFamily: 'NotoSans',
  scaffoldBackgroundColor: PokeColors.background,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyles.bold24,
    backgroundColor: Colors.white,
    elevation: 0,
  ),
);
