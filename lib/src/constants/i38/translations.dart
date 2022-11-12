import 'package:get/get.dart';

class I38 extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          enterEmail: 'Enter your email',
          welcomeToHelper: 'Welcome to your\nown personal\nhelper!',
          helpOrganizeStuff: 'We\'ll organize all\nyour pending\nstuff',
        },
        'pt_BR': {
          enterEmail: 'Insira seu email',
          welcomeToHelper: 'Seja bem vindo ao seu\npróprio ajudante\npessoal!',
          helpOrganizeStuff:
              'Nós vamos organizar\ntodas suas coisas\npendentes',
        },
      };

  static String get enterEmail => 'enter_email';

  static String get welcomeToHelper => 'welcome_to_helper';

  static String get helpOrganizeStuff => 'help_organize_stuff';
}
