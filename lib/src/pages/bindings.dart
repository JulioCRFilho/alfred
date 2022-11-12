import 'package:get/get.dart' as getx;
import 'package:alfred/src/pages/on_boarding/screen/step_one.dart';
import 'package:alfred/src/pages/on_boarding/screen/step_two.dart';

class InitialBindings extends getx.Bindings {
  @override
  void dependencies() {
    getx.GetPage(
      name: OnBoarding.stepOne,
      page: () => StepOneScreen(),
    );
    getx.GetPage(
      name: OnBoarding.stepTwo,
      page: () => StepTwoScreen(),
    );
  }
}

abstract class OnBoarding {
  static const stepOne = '/on_boarding/step_one';
  static const stepTwo = '/on_boarding/step_two';
}