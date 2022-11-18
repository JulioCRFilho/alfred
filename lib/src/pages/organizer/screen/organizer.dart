import 'package:alfred/src/utils/widgets/alfred/alfred_one.dart';
import 'package:alfred/src/utils/widgets/balloon.dart';
import 'package:alfred/src/utils/widgets/page.dart';
import 'package:flutter/material.dart';

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen.creator({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned(
            bottom: 0,
            left: -100,
            child: AlfredOne(),
          ),
          const Positioned(
            top: 30,
            right: 10,
            child: BalloonWidget(
              scale: 3,
            ),
          ),
        ],
      ),
    );
  }
}
