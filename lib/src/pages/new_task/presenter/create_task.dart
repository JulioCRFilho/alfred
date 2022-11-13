import 'package:get/get.dart';

class CreateTaskPresenter extends GetxController {
  final Rx<String?> category = ''.obs;

  @override
  void onInit() {
    category.value = Get.arguments?['selected_category'];
    super.onInit();
  }
}