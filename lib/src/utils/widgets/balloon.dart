import 'package:flutter/material.dart';

class BalloonWidget extends StatelessWidget {
  final Side side;
  final double scale;

  const BalloonWidget({
    Key? key,
    this.side = BalloonSide.right,
    this.scale = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/balloon_$side.png',
      scale: scale,
    );
  }
}

typedef Side = String;

abstract class BalloonSide {
  static const Side left = 'left';
  static const Side right = 'right';
}
