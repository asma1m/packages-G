import "package:flutter/material.dart";
export "example_package.dart";
import "package:get/get.dart";
import "package:image_picker/image_picker.dart";
import 'package:outline_gradient_button/outline_gradient_button.dart';

class MyWidgetBoutton extends StatefulWidget {
  MyWidgetBoutton({super.key, required this.title});
  Widget title;

  @override
  State<MyWidgetBoutton> createState() => _MyWidgetBouttonState();
}

class _MyWidgetBouttonState extends State<MyWidgetBoutton> {
  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.5,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xff5473F7),
          ),
          onPressed: () async {
            XFile? image = await picker.pickImage(source: ImageSource.gallery);
          },
          child: widget.title),
    );
  }
}
