import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:alfred/src/pages/bindings/i_bindings.dart';
import 'package:alfred/src/pages/on_boarding/export.dart';
import 'package:get/get.dart';

enum OnBoarding implements IBindings {
  stepOne(
    name: '/on_boarding/step_one',
    creator: StepOneScreen.creator,
    presenter: StepOnePresenter.creator,
  ),
  stepTwo(
   name: '/on_boarding/step_two',
   creator: StepTwoScreen.creator,
   presenter: StepTwoPresenter.creator,
  );

  const OnBoarding({
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

  static List<IBindings> get pages => OnBoarding.values;
}
