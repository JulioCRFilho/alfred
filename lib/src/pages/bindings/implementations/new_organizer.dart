import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:alfred/src/pages/bindings/i_bindings.dart';
import 'package:alfred/src/pages/new_organizer/presenter/categories.dart';
import 'package:alfred/src/pages/new_organizer/presenter/create_organizer.dart';
import 'package:alfred/src/pages/new_organizer/screen/categories.dart';
import 'package:alfred/src/pages/new_organizer/screen/create_organizer.dart';
import 'package:get/get.dart';

enum NewOrganizer implements IBindings {
  categories(
    name: '/new_task/categories',
    creator: CategoriesScreen.creator,
    presenter: CategoriesPresenter.creator,
  ),
  createOrganizer(
    name: '/new_task/create_task',
    creator: CreateOrganizerScreen.creator,
    presenter: CreateOrganizerPresenter.creator,
  );

  const NewOrganizer({
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

  static List<IBindings> get pages => NewOrganizer.values;
}
