import 'package:alfred/src/constants/i38/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageWidget extends StatelessWidget {
  final Widget body;
  final Color? color;
  final bool resizeBottom;

  const PageWidget({
    Key? key,
    required this.body,
    this.color,
    this.resizeBottom = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeBottom,
      backgroundColor: color ?? Colors.orange[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                Get.locale = const Locale(I38.enUS);
                Get.forceAppUpdate();
              },
              child: const Text(I38.enUS),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                Get.locale = const Locale(I38.ptBR);
                Get.forceAppUpdate();
              },
              child: const Text(I38.ptBR),
            ),
          ),
        ],
      ),
      body: body,
    );
  }
}
