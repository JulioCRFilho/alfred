import 'package:alfred/src/pages/bindings.dart';
import 'package:alfred/src/pages/new_organizer/presenter/categories.dart';
import 'package:alfred/src/pages/new_organizer/presenter/create_organizer.dart';
import 'package:alfred/src/pages/new_organizer/screen/categories.dart';
import 'package:alfred/src/pages/new_organizer/screen/create_organizer.dart';
import 'package:get/get.dart';

abstract class NewOrganizerBinding {
  static const Page categories = '/new_task/categories';
  static const Page createTask = '/new_task/create_task';

  static List<GetPage> values = [
    GetPage(
      name: categories,
      page: () => const CategoriesScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => CategoriesPresenter());
      }),
    ),
    GetPage(
      name: createTask,
      page: () => const CreateOrganizerScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => CreateOrganizerPresenter());
      }),
    ),
  ];
}
