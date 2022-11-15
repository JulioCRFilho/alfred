import 'package:get/get.dart';

class OrganizerPresenter extends GetxController {
  final RxString category = ''.obs;

  @override
  void onInit() {
    category.value = Get.arguments?['selected_category'];
    super.onInit();
  }
}