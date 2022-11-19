import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:alfred/src/pages/bindings/i_bindings.dart';
import 'package:alfred/src/pages/new_organizer/presenter/categories.dart';
import 'package:alfred/src/pages/new_organizer/presenter/create_organizer.dart';
import 'package:alfred/src/pages/new_organizer/screen/categories.dart';
import 'package:alfred/src/pages/new_organizer/screen/create_organizer.dart';
import 'package:get/get.dart';

class NewOrganizer implements IBindings {
  NewOrganizer.categories({
    this.name = '/new_task/categories',
    this.creator = CategoriesScreen.creator,
    this.presenter = CategoriesPresenter.creator,
  });

  NewOrganizer.createOrganizer({
    this.name = '/new_task/create_task',
    this.creator = CreateOrganizerScreen.creator,
    this.presenter = CreateOrganizerPresenter.creator,
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
        NewOrganizer.categories,
        NewOrganizer.createOrganizer,
      ];
}
