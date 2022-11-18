import 'package:alfred/src/pages/on_boarding/i38.dart';
import 'package:alfred/src/pages/on_boarding/presenter/step_two.dart';
import 'package:alfred/src/utils/widgets/alfred/alfred_one.dart';
import 'package:alfred/src/utils/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepTwoScreen extends GetView<StepTwoPresenter> {
  const StepTwoScreen.creator({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                OnBoardingI38.startDefiningType.tr,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      height: 2,
                    ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 240,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                OnBoardingI38.selectOrCreateCategory.tr,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      height: 2,
                    ),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: AlfredOne(
              scale: .95,
              side: AlfredSide.left,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: InkWell(
              onTap: controller.getStarted,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  OnBoardingI38.getStarted.tr,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
