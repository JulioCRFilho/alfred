import 'package:alfred/src/constants/i38/translations.dart';
import 'package:alfred/src/constants/themes/light.dart';
import 'package:alfred/src/pages/bindings/bindings.dart';
import 'package:alfred/src/pages/bindings/implementations/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      translations: I38(),
      theme: selectedTheme,
      getPages: InitialBindings.routes,
      initialRoute: OnBoarding.stepOne.name,
      locale: const Locale('pt', 'BR'),
    ),
  );
}
