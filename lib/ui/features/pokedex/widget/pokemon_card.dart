import 'package:flutter/material.dart';
import 'package:pokedex/domain/pokemon/pokemon.dart';
import 'package:pokedex/ui/navigation/app_router.dart';
import 'package:pokedex/ui/theme/poke_colors.dart';
import 'package:pokedex/ui/theme/text_styles.dart';
import 'package:pokedex/ui/widget/cached_color_image.dart';
import 'package:pokedex/utils/const.dart';
import 'package:pokedex/utils/formats.dart';
import 'package:pokedex/utils/string_extension.dart';

class PokemonCard extends StatefulWidget {
  final Pokemon pokemon;
  final Map<Pokemon, Color> colorsCache;

  const PokemonCard({
    required this.pokemon,
    required this.colorsCache,
    Key? key,
  }) : super(key: key);

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      child: InkWell(
        onTap: () {
          AppRouter.of(context).openPokemonScreen(
            widget.pokemon,
            widget.colorsCache[widget.pokemon],
          );
        },
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: AnimatedContainer(
                  duration: Const.animationDuration,
                  curve: Const.animationCurve,
                  decoration: BoxDecoration(
                    color: widget.colorsCache[widget.pokemon],
                  ),
                  child: Center(
                    child: CachedColorImage(
                      imageUrl: widget.pokemon.img,
                      needDetect: !widget.colorsCache.containsKey(widget.pokemon),
                      onColorDetected: (color) {
                        setState(() {
                          widget.colorsCache[widget.pokemon] = color;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  Formats.formatId(widget.pokemon.id),
                  style: TextStyles.regular12.copyWith(color: PokeColors.grey),
                ),
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  widget.pokemon.name.capitalize(),
                  style: TextStyles.semiBold14.copyWith(color: PokeColors.black87),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  Formats.formatPokemonTypes(widget.pokemon.types),
                  style: TextStyles.regular12.copyWith(color: PokeColors.grey),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
