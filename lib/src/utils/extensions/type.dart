import 'package:alfred/src/constants/get_arguments/arguments.dart';
import 'package:get/get.dart';

extension Getter on Type {
  operator [](Argument arg) => Get.arguments?[arg];
}