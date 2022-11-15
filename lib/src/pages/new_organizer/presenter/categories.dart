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
      arguments: {'selected_category': categorySelected.value},
    );
  }
}
