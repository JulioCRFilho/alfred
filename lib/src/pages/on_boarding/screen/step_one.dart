import 'package:alfred/src/utils/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepOneScreen extends StatelessWidget {
  const StepOneScreen({Key? key}) : super(key: key);

  static const EdgeInsetsGeometry leftMargin = EdgeInsets.only(left: 16);
  static const EdgeInsetsGeometry rightMargin = EdgeInsets.only(right: 16);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      shrink: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 40,
            left: 0,
            child: Padding(
              padding: leftMargin,
              child: Text(
                'Welcome to your\nown personal\nhelper!',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      height: 2,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
          Positioned(
            top: 240,
            right: 0,
            child: Padding(
              padding: rightMargin,
              child: Text(
                'We\'ll organize all\nyour pending\nstuff',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      height: 2,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/alfred.png',
              scale: .8,
            ),
          ),
          Positioned(
            bottom: 150,
            right: 60,
            child: IconButton(
              icon: const Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 100,
              ),
              onPressed: () => Get.toNamed(''),
            ),
          ),
        ],
      ),
    );
  }
}
