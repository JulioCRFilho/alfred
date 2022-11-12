import 'package:alfred/src/pages/on_boarding/presenter/step_two.dart';
import 'package:alfred/src/pages/on_boarding/screen/step_one.dart';
import 'package:alfred/src/pages/on_boarding/screen/step_two.dart';
import 'package:get/get.dart';

abstract class InitialBindings extends Bindings {
  static List<GetPage> routes() {
    return [
      GetPage(
        name: OnBoarding.stepOne,
        page: () => const StepOneScreen(),
      ),
      GetPage(
        name: OnBoarding.stepTwo,
        page: () => const StepTwoScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => StepTwoPresenter());
        }),
      ),
    ];
  }
}

abstract class OnBoarding {
  static const String stepOne = '/on_boarding/step_one';
  static const String stepTwo = '/on_boarding/step_two';
}
