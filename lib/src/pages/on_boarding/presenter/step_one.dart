import 'package:alfred/src/pages/bindings.dart';
import 'package:alfred/src/pages/on_boarding/bindings.dart';
import 'package:get/get.dart';

class StepOnePresenter extends GetxController {
  void stepTwo() => Get.toNamed(OnBoardingBinding.stepTwo);
}
