import 'package:alfred/src/constants/get_arguments/arguments.dart';
import 'package:alfred/src/utils/extensions/type.dart';
import 'package:get/get.dart';

class OrganizerPresenter extends GetxController {
  final RxString category = ''.obs;

  @override
  void onInit() {
    category.value = Args[Args.selectedCategory] as String;
    super.onInit();
  }
}