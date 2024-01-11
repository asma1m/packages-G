import 'package:flutter/material.dart';
export "example_package.dart";

class MyWidgetBoutton extends StatelessWidget {
  MyWidgetBoutton({super.key, required this.title});
  Widget title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xff5473F7),
        ),
        onPressed: () {},
        child: title);
  }
}
