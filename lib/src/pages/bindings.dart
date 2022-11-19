import 'package:alfred/src/pages/new_organizer/presenter/categories.dart';
import 'package:alfred/src/pages/new_organizer/presenter/create_organizer.dart';
import 'package:alfred/src/pages/new_organizer/screen/categories.dart';
import 'package:alfred/src/pages/new_organizer/screen/create_organizer.dart';
import 'package:alfred/src/pages/on_boarding/presenter/step_one.dart';
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
        binding: BindingsBuilder(() {
          Get.lazyPut(() => StepOnePresenter());
        }),
      ),
      GetPage(
        name: OnBoarding.stepTwo,
        page: () => const StepTwoScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => StepTwoPresenter());
        }),
      ),
      GetPage(
        name: NewTask.categories,
        page: () => const CategoriesScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => CategoriesPresenter());
        }),
      ),
      GetPage(
        name: NewTask.createTask,
        page: () => const CreateOrganizerScreen(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => CreateOrganizerPresenter());
        }),
      )
    ];
  }
}

typedef Page = String;

abstract class OnBoarding {
  static const Page stepOne = '/on_boarding/step_one';
  static const Page stepTwo = '/on_boarding/step_two';
}

abstract class NewTask {
  static const Page categories = '/new_task/categories';
  static const Page createTask = '/new_task/create_task';
}
