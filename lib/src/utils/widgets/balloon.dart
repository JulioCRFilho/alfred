import 'package:flutter/material.dart';

class BalloonWidget extends StatelessWidget {
  final Side side;
  final double scale;
  final Widget? child;

  const BalloonWidget({
    Key? key,
    this.side = BalloonSide.right,
    this.scale = 5,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/balloon_$side.png',
          scale: scale,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: child ?? Container(),
        ),
      ],
    );
  }
}

typedef Side = String;

abstract class BalloonSide {
  static const Side left = 'left';
  static const Side right = 'right';
}
