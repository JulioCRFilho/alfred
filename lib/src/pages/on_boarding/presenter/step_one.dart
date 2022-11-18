import 'package:alfred/src/pages/bindings/implementations/on_boarding.dart';
import 'package:get/get.dart';

class StepOnePresenter extends GetxController {
  StepOnePresenter();

  factory StepOnePresenter.creator() => StepOnePresenter();

  void stepTwo() => OnBoarding.stepTwo.navigate();
}
