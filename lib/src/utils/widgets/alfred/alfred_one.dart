import 'package:flutter/material.dart';

class AlfredOne extends StatelessWidget {
  static const String tag = 'AlfredOne';

  final double scale;

  final Side side;

  const AlfredOne({
    Key? key,
    this.scale = .8,
    this.side = AlfredSide.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/alfred_one_$side.png',
      scale: scale,
    );
  }
}

typedef Side = String;

abstract class AlfredSide {
  static const Side left = 'left';
  static const Side right = 'right';
}
