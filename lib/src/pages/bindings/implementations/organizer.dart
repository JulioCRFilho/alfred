import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:alfred/src/pages/bindings/i_bindings.dart';
import 'package:alfred/src/pages/organizer/presenter/organizer.dart';
import 'package:alfred/src/pages/organizer/screen/organizer.dart';
import 'package:get/get.dart';

enum Organizer implements IBindings {
  organizer(
    name: '/organizer/organizer',
    creator: OrganizerScreen.creator,
    presenter: OrganizerPresenter.creator,
  );

  const Organizer({
    required this.name,
    required this.creator,
    required this.presenter,
  });

  @override
  final Page name;
  @override
  final ScreenFactory creator;
  @override
  final PresenterFactory presenter;

  void navigate({Map<Argument, dynamic>? args}) =>
      Get.toNamed(name, arguments: args);

  static List<IBindings> get pages => Organizer.values;
}
