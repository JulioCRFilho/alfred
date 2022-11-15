import 'package:get/get.dart';

typedef Argument = String;

typedef GetArgument = dynamic Function(Argument arg);

abstract class Args {
  static const Argument selectedCategory = 'selected_category';
  static const Argument organizerTitle = 'organizer_title';
}

extension Getter on Type {
  operator [](Argument arg) => Get.arguments?[arg];
}