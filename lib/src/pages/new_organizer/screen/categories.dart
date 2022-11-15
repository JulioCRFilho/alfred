import 'package:alfred/src/constants/task_categories.dart';
import 'package:alfred/src/pages/new_organizer/i38.dart';
import 'package:alfred/src/pages/new_organizer/presenter/categories.dart';
import 'package:alfred/src/utils/widgets/alfred/alfred_one.dart';
import 'package:alfred/src/utils/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends GetView<CategoriesPresenter> {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: TaskCategories.list
                    .map(
                      (e) => InkWell(
                        onTap: () => controller.selectCategory(e),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              e.tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    color: Colors.white,
                                    height: 1.5,
                                  ),
                            ),
                            const Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: AlfredOne(
              scale: 1,
            ),
          ),
          Positioned(
            bottom: 100,
            right: 20,
            child: Column(
              children: [
                Text(
                  NewOrganizerI38.orCreateNewCategory.tr,
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        height: 1.5,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: InkWell(
                    onTap: controller.continueTaskCreation,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.orange[300],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
