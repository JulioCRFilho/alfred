import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:alfred/src/pages/bindings/i_bindings.dart';
import 'package:alfred/src/pages/organizer/presenter/organizer.dart';
import 'package:alfred/src/pages/organizer/screen/organizer.dart';
import 'package:get/get.dart';

class Organizer implements IBindings {
  const Organizer.organizer({
    this.name = '/organizer/organizer',
    this.creator = OrganizerScreen.creator,
    this.presenter = OrganizerPresenter.creator,
  });

  @override
  final Page name;

  @override
  final ScreenFactory creator;

  @override
  final PresenterFactory presenter;

  void navigate({Map<Argument, dynamic>? args}) =>
      Get.toNamed(name, arguments: args);

  static List<IBindings Function()> get pages => [
        Organizer.organizer,
      ];
}
