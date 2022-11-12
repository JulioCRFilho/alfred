import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final Widget body;
  final bool shrink;
  final Color? color;

  const PageWidget({
    Key? key,
    required this.body,
    this.shrink = false,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color ?? Colors.orange[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: shrink ? 0 : 56,
      ),
      body: body,
    );
  }
}
