import 'package:alfred/src/pages/on_boarding/i38.dart';
import 'package:get/get.dart';

typedef Language = String;

class I38 extends Translations {
  @override
  Map<Language, Map<String, String>> get keys =>
      {
        'en_US': {
          ...OnBoardingI38.routeEN,
        },
        'pt_BR': {
          ...OnBoardingI38.routePT,
        },
      };

  static const Language ptBR = 'pt_BR';
  static const Language enUS = 'en_US';
}
