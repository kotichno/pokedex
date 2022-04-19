import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:worker_manager/worker_manager.dart';

class CachedColorImage extends StatefulWidget {
  final String imageUrl;
  final ValueSetter<ui.Color> onColorDetected;
  final bool needDetect;
  final String? heroTag;

  const CachedColorImage({
    required this.imageUrl,
    required this.onColorDetected,
    this.needDetect = true,
    this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  State<CachedColorImage> createState() => _CachedColorImageState();
}

class _CachedColorImageState extends State<CachedColorImage> {
  _CalculationStatus status = _CalculationStatus.none;

  @override
  Widget build(BuildContext context) {
    final child = CachedNetworkImage(
      imageBuilder: (_, imageProvider) {
        if (status == _CalculationStatus.none && widget.needDetect) {
          status = _CalculationStatus.calculating;

          final stream = imageProvider.resolve(const ImageConfiguration(devicePixelRatio: 1.0));
          final imageCompleter = Completer<ui.Image>();
          Timer? loadFailureTimeout;
          late ImageStreamListener listener;
          listener = ImageStreamListener((info, synchronousCall) {
            loadFailureTimeout?.cancel();
            stream.removeListener(listener);
            imageCompleter.complete(info.image);
          });

          stream.addListener(listener);
          imageCompleter.future.then((image) async {
            final bytes = await image.toByteData();
            if (bytes != null) {
              final colorValue = await Executor().execute<ByteData, int, int, void, int?>(
                arg1: bytes,
                arg2: image.width,
                arg3: image.height,
                fun3: loadImageBaseColor,
              );
              if (colorValue != null && mounted) {
                widget.onColorDetected(ui.Color(colorValue).withOpacity(0.5));
              }
            }
          });
        }

        status = _CalculationStatus.done;

        return Image(image: imageProvider);
      },
      imageUrl: widget.imageUrl,
    );
    
    if (widget.heroTag != null) {
      return Hero(tag: widget.heroTag!, child: child);
    } else {
      return child;
    }
  }
}

enum _CalculationStatus {
  none,
  calculating,
  done,
}

Future<int?> loadImageBaseColor(ByteData byteData, int width, int height) async {
  final generator = await PaletteGenerator.fromByteData(
    EncodedImage(
      byteData,
      width: width,
      height: height,
    ),
  );
  return generator.dominantColor?.color.value;
}
