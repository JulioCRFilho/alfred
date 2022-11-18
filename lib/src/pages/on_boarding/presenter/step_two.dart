import 'package:alfred/src/constants/task_categories.dart';
import 'package:alfred/src/pages/bindings/implementations/organizer.dart';
import 'package:get/get.dart';

class StepTwoPresenter extends GetxController {
  StepTwoPresenter.creator();

  RxString selectedCategory = TaskCategories.list[0].obs;

  void setCategory(String? value) {
    if (value == null) return;
    selectedCategory.value = value;
  }

  void getStarted() => Organizer.organizer.navigate();
}