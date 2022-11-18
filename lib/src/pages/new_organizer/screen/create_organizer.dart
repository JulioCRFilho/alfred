import 'package:alfred/src/pages/new_organizer/i38.dart';
import 'package:alfred/src/pages/new_organizer/presenter/create_organizer.dart';
import 'package:alfred/src/utils/widgets/alfred/alfred_one.dart';
import 'package:alfred/src/utils/widgets/balloon.dart';
import 'package:alfred/src/utils/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateOrganizerScreen extends GetView<CreateOrganizerPresenter> {
  const CreateOrganizerScreen.creator({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      body: Stack(
        clipBehavior: Clip.antiAlias,
        fit: StackFit.expand,
        children: [
          const Positioned(
            right: -200,
            bottom: 0,
            child: AlfredOne(
              side: AlfredSide.left,
              scale: .5,
            ),
          ),
          Positioned(
            top: 0,
            child: BalloonWidget(
              side: BalloonSide.left,
              scale: 4,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    NewOrganizerI38.nameForTheCategory.tr,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: TextField(
                      controller: controller.categoryField,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 230,
            child: BalloonWidget(
              side: BalloonSide.left,
              scale: 4,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    NewOrganizerI38.nameForTheOrganizer.tr,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: TextField(
                      controller: controller.titleField,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 0,
            child: InkWell(
              onTap: controller.continueCreation,
              child: const Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 180,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
