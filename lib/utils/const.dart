import 'package:flutter/material.dart';

class Const {
  static const initialPage = 0;
  static const pageSize = 18;
  static const animationDuration = Duration(milliseconds: 200);
  static const animationCurve = Curves.easeInOut;
  static const gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    mainAxisSpacing: 12,
    crossAxisSpacing: 10,
    childAspectRatio: 0.59,
  );

  Const._();
}
