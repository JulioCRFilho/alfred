import 'package:alfred/src/constants/i38/translations.dart';
import 'package:alfred/src/constants/themes/light.dart';
import 'package:alfred/src/pages/bindings.dart';
import 'package:alfred/src/pages/on_boarding/screen/step_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      translations: I38(),
      theme: selectedTheme,
      getPages: InitialBindings.routes(),
      home: const StepOneScreen(),
      locale: const Locale('pt', 'BR'),
    ),
  );
}
