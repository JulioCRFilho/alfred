import 'package:alfred/src/pages/on_boarding/i38.dart';
import 'package:get/get.dart';

class I38 extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          ...OnBoardingI38.routeEN,
        },
        'pt_BR': {
          ...OnBoardingI38.routePT,
        },
      };
}
