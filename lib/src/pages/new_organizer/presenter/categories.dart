import 'package:alfred/src/constants/get_arguments/arguments.dart';
import 'package:alfred/src/pages/new_organizer/binding.dart';
import 'package:get/get.dart';

class CategoriesPresenter extends GetxController {
  final RxString categorySelected = ''.obs;

  void selectCategory(String category) {
    categorySelected.value = category;
    continueTaskCreation();
  }

  void continueTaskCreation() {
    Get.toNamed(
      NewOrganizerBinding.createTask,
      arguments: {
        Args.selectedCategory: categorySelected.value,
      },
    );
  }
}
