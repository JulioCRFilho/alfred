import 'package:alfred/src/constants/task_categories.dart';
import 'package:alfred/src/pages/new_task/i38.dart';
import 'package:alfred/src/pages/on_boarding/i38.dart';
import 'package:get/get.dart';

typedef Language = String;

class I38 extends Translations {
  @override
  Map<Language, Map<String, String>> get keys =>
      {
        'en_US': {
          ...TaskCategories.listEN,
          ...OnBoardingI38.routeEN,
          ...NewTaskI38.routeEN,
        },
        'pt_BR': {
          ...TaskCategories.listPT,
          ...OnBoardingI38.routePT,
          ...NewTaskI38.routePT,
        },
      };

  static const Language ptBR = 'pt_BR';
  static const Language enUS = 'en_US';
}
