import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateOrganizerPresenter extends GetxController {
  final TextEditingController categoryField = TextEditingController();

  final TextEditingController titleField = TextEditingController();

  @override
  void onInit() {
    final String? argument = Args[Args.selectedCategory];
    categoryField.text = argument ?? '';
    super.onInit();
  }

  void continueCreation() {
    Get.toNamed(
      'TODO: create next screen',
      arguments: {
        Args.selectedCategory: categoryField.text,
        Args.organizerTitle: titleField.text,
      },
    );
  }
}
