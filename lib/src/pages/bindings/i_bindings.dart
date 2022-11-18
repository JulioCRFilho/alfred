import 'package:flutter/material.dart';
import 'package:get/get.dart';

typedef Page = String;
typedef ScreenFactory<T extends Widget> = T Function();
typedef PresenterFactory<T extends GetxController> = T Function();

abstract class IBindings {
  final Page name;
  final ScreenFactory creator;
  final PresenterFactory presenter;

  const IBindings({
    required this.name,
    required this.creator,
    required this.presenter,
  });
}
