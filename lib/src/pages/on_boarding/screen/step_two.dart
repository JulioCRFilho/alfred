import 'package:alfred/src/constants/i38/translations.dart';
import 'package:alfred/src/constants/task_categories.dart';
import 'package:alfred/src/pages/on_boarding/i38.dart';
import 'package:alfred/src/pages/on_boarding/presenter/step_two.dart';
import 'package:alfred/src/utils/widgets/alfred/alfred_one.dart';
import 'package:alfred/src/utils/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepTwoScreen extends GetView<StepTwoPresenter> with OnBoardingI38 {
  const StepTwoScreen({Key? key}) : super(key: key);

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
            top: 220,
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
              scale: 1,
              side: AlfredSide.left,
            ),
          ),
          Positioned(
            bottom: 150,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Obx(
                () {
                  return Column(
                    children: [
                      Text(
                        OnBoardingI38.selectCategory.tr,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      DropdownButton<String>(
                        value: controller.selectedCategory.value,
                        borderRadius: BorderRadius.circular(20),
                        dropdownColor: Colors.transparent,
                        onChanged: controller.setCategory,

                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.white,
                            ),
                        icon: const Icon(
                          Icons.list,
                          color: Colors.white,
                          size: 40,
                        ),
                        items: TaskCategories.list
                            .map(
                              (e) => DropdownMenuItem<String>(
                                value: e,
                                child: Text(
                                  e,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
