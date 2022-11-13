import 'package:get/get.dart';

abstract class TaskCategories {
  static List<String> list = [
    'Contas'.tr,
    'Compras'.tr,
    'Limpeza'.tr,
    'Afazeres'.tr,
    'Reuniões'.tr,
    'Farmácia'.tr,
    'Mercado'.tr,
  ];

  static const Map<String, String> listPT = {
    'Contas': 'Contas',
    'Compras': 'Compras',
    'Limpeza': 'Limpeza',
    'Afazeres': 'Afazeres',
    'Reuniões': 'Reuniões',
    'Farmácia': 'Farmácia',
    'Mercado': 'Mercado',
  };

  static const Map<String, String> listEN = {
    'Contas': 'Bills',
    'Compras': 'Shopping',
    'Limpeza': 'Cleaning',
    'Afazeres': 'To do',
    'Reuniões': 'Meetings',
    'Farmácia': 'Drug Store',
    'Mercado': 'Groceries',
  };
}
