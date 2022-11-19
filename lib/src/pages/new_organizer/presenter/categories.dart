import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:alfred/src/pages/bindings.dart';
import 'package:get/get.dart';

class CategoriesPresenter extends GetxController {
  final RxString categorySelected = ''.obs;

  void selectCategory(String category) {
    categorySelected.value = category;
    continueTaskCreation();
  }

  void continueTaskCreation() {
    Get.toNamed(
      NewTask.createTask,
      arguments: {
        Args.selectedCategory: categorySelected.value,
      },
    );
  }
}
