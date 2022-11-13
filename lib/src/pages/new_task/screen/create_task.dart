import 'package:alfred/src/pages/new_task/presenter/create_task.dart';
import 'package:alfred/src/utils/widgets/alfred/alfred_one.dart';
import 'package:alfred/src/utils/widgets/balloon.dart';
import 'package:alfred/src/utils/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTaskScreen extends GetView<CreateTaskPresenter> {
  const CreateTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      body: Stack(
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
          const Positioned(
            top: 30,
            left: 10,
            child: BalloonWidget(
              side: BalloonSide.left,
            ),
          ),
          const Positioned(
            top: 230,
            left: 10,
            child: BalloonWidget(
              side: BalloonSide.left,
            ),
          ),
          const Positioned(
            top: 430,
            left: 10,
            child: BalloonWidget(
              side: BalloonSide.left,
            ),
          ),
        ],
      ),
    );
  }
}
