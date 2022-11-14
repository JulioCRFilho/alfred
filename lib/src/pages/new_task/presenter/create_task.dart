import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateTaskPresenter extends GetxController {
  final TextEditingController categoryField = TextEditingController();

  final TextEditingController titleField = TextEditingController();

  @override
  void onInit() {
    final String? argument = Get.arguments?['selected_category'];
    categoryField.text = argument ?? '';
    super.onInit();
  }

  void continueCreation() {
    Get.toNamed(
      'TODO: create next screen',
      arguments: {
        'selected_category': categoryField.text,
        'organizer_title': titleField.text,
      },
    );
  }
}
