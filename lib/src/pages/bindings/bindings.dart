import 'package:alfred/src/pages/bindings/i_bindings.dart';
import 'package:alfred/src/pages/bindings/implementations/export.dart';
import 'package:get/get.dart';

abstract class InitialBindings extends Bindings {
  static List<GetPage> get routes {
    return _implementations.map(
      (page) {
        Get.lazyPut(page.presenter);

        return GetPage(
          name: page.name,
          page: page.creator,
        );
      },
    ).toList();
  }

  static List<IBindings> get _implementations => [
        ...OnBoarding.pages,
        ...NewOrganizer.pages,
        ...Organizer.pages,
      ];
}
