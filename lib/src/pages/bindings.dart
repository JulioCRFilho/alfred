import 'package:alfred/src/pages/new_organizer/binding.dart';
import 'package:alfred/src/pages/on_boarding/bindings.dart';
import 'package:alfred/src/pages/organizer/bindings.dart';
import 'package:get/get.dart';

typedef Page = String;

abstract class InitialBindings extends Bindings {
  static List<GetPage> get routes {
    return [
      ...OnBoardingBinding.values,
      ...NewOrganizerBinding.values,
      ...OrganizerBinding.values,
    ];
  }
}
