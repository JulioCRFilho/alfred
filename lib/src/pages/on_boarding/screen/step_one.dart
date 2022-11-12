import 'package:alfred/src/pages/bindings.dart';
import 'package:alfred/src/pages/on_boarding/i38.dart';
import 'package:alfred/src/utils/widgets/alfred/alfred_one.dart';
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
            top: 30,
            left: 0,
            child: Padding(
              padding: leftMargin,
              child: Text(
                OnBoardingI38.welcomeToHelper.tr,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      height: 2,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
          Positioned(
            top: 230,
            right: 0,
            child: Padding(
              padding: rightMargin,
              child: Text(
                OnBoardingI38.helpOrganizeStuff.tr,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      height: 2,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: AlfredOne(),
          ),
          Positioned(
            bottom: 150,
            right: 20,
            child: InkWell(
              onTap: () => Get.toNamed(OnBoarding.stepTwo),
              child: const Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
