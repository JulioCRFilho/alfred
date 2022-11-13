import 'package:alfred/src/constants/task_categories.dart';
import 'package:get/get.dart';

class CategoriesPresenter extends GetxController {
  final RxString categorySelected = TaskCategories.list[0].obs;

  void selectCategory(String category) => categorySelected.value = category;
}
