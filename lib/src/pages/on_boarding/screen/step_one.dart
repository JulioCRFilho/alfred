import 'package:alfred/src/pages/on_boarding/i38.dart';
import 'package:alfred/src/pages/on_boarding/presenter/step_one.dart';
import 'package:alfred/src/utils/widgets/alfred/alfred_one.dart';
import 'package:alfred/src/utils/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepOneScreen extends GetView<StepOnePresenter> {
  const StepOneScreen.creator({super.key});

  static const EdgeInsetsGeometry _leftMargin = EdgeInsets.only(left: 16);
  static const EdgeInsetsGeometry _rightMargin = EdgeInsets.only(right: 16);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -20,
            left: 0,
            child: Padding(
              padding: _leftMargin,
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
            top: 170,
            right: 0,
            child: Padding(
              padding: _rightMargin,
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
              onTap: controller.stepTwo,
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
