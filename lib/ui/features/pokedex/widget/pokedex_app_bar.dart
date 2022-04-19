import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/assets/svg_images.dart';
import 'package:pokedex/l10n/generated/l10n.dart';

class PokedexAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size(double.infinity, 44);

  const PokedexAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            SvgImages.pokedex,
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 24),
          Text(
            S.of(context).pokedexTitle,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ],
      ),
    );
  }
}
