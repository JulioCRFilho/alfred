import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:alfred/src/pages/bindings/implementations/new_organizer.dart';
import 'package:get/get.dart';

class CategoriesPresenter extends GetxController {
  CategoriesPresenter.creator();

  final RxString categorySelected = ''.obs;

  void selectCategory(String category) {
    categorySelected.value = category;
    continueTaskCreation();
  }

  void continueTaskCreation() => NewOrganizer.createOrganizer.navigate(
        args: {
          Args.selectedCategory: categorySelected.value,
        },
      );
}
