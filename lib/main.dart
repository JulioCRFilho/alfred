import 'package:alfred/src/constants/themes/light.dart';
import 'package:alfred/src/pages/on_boarding/screen/step_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alfred/src/pages/bindings.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: selectedTheme,
      home: const StepOneScreen(),
      initialBinding: InitialBindings(),
    ),
  );
}
