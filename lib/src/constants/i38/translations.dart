import 'package:alfred/src/constants/task_categories.dart';
import 'package:alfred/src/pages/new_organizer/i38.dart';
import 'package:alfred/src/pages/on_boarding/i38.dart';
import 'package:get/get.dart';

typedef Language = String;

class I38 extends Translations {
  @override
  Map<Language, Map<String, String>> get keys =>
      {
        enUS: {
          ...TaskCategories.listEN,
          ...OnBoardingI38.routeEN,
          ...NewOrganizerI38.routeEN,
        },
        ptBR: {
          ...TaskCategories.listPT,
          ...OnBoardingI38.routePT,
          ...NewOrganizerI38.routePT,
        },
      };

  static const Language ptBR = 'pt_BR';
  static const Language enUS = 'en_US';
}
