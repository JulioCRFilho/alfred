import 'package:alfred/src/constants/get_arguments/organizer.dart';
import 'package:alfred/src/pages/bindings/i_bindings.dart';
import 'package:alfred/src/pages/on_boarding/export.dart';
import 'package:get/get.dart';

class OnBoarding implements IBindings {
  static const String stepOnePath = '/on_boarding/step_one';
  static const String stepTwoPath = '/on_boarding/step_two';

  const OnBoarding.stepOne({
    this.name = stepOnePath,
    this.creator = StepOneScreen.creator,
    this.presenter = StepOnePresenter.creator,
  });

  const OnBoarding.stepTwo({
    this.name = '/on_boarding/step_two',
    this.creator = StepTwoScreen.creator,
    this.presenter = StepTwoPresenter.creator,
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
        OnBoarding.stepOne,
        OnBoarding.stepTwo,
      ];
}
