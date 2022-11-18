import 'package:alfred/src/pages/bindings.dart';
import 'package:alfred/src/pages/on_boarding/presenter/step_one.dart';
import 'package:alfred/src/pages/on_boarding/presenter/step_two.dart';
import 'package:alfred/src/pages/on_boarding/screen/step_one.dart';
import 'package:alfred/src/pages/on_boarding/screen/step_two.dart';
import 'package:get/get.dart';

abstract class OnBoardingBinding {
  static const Page stepOne = '/on_boarding/step_one';
  static const Page stepTwo = '/on_boarding/step_two';

  static List<GetPage> values = [
    GetPage(
      name: stepOne,
      page: () => const StepOneScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => StepOnePresenter());
      }),
    ),
    GetPage(
      name: stepTwo,
      page: () => const StepTwoScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => StepTwoPresenter());
      }),
    ),
  ];
}
