import 'package:flutter/material.dart';

class PokedexLoadingWidget extends StatelessWidget {
  const PokedexLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
