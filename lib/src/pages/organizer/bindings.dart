import 'package:alfred/src/pages/organizer/presenter/organizer.dart';
import 'package:alfred/src/pages/organizer/screen/organizer.dart';
import 'package:get/get.dart';

abstract class OrganizerBinding {
  static const String organizer = '/organizer/organizer';

  static List<GetPage> values = [
    GetPage(
      name: organizer,
      page: () => const OrganizerScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => OrganizerPresenter());
      }),
    ),
  ];
}
