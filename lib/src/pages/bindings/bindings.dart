import 'package:alfred/src/pages/bindings/i_bindings.dart';
import 'package:alfred/src/pages/bindings/implementations/export.dart';
import 'package:get/get.dart';

abstract class InitialBindings extends Bindings {
  static List<GetPage> get routes {
    return _implementations.map(
      (page) {
        final screen = page();
        Get.lazyPut(screen.presenter);

        return GetPage(
          name: screen.name,
          page: screen.creator,
        );
      },
    ).toList();
  }

  ///Add named constructors here to increment them on the navigation routing
  static List<IBindings Function()> get _implementations => [
        ...OnBoarding.pages,
        ...NewOrganizer.pages,
        ...Organizer.pages,
      ];
}
