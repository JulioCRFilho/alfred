import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:get/get.dart';

class OrganizerPresenter extends GetxController {
  OrganizerPresenter.creator();

  final RxString category = ''.obs;

  @override
  void onInit() {
    category.value = Args[Args.selectedCategory] as String;
    super.onInit();
  }
}