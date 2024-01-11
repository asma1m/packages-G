import "package:flutter/material.dart";
export "example_package.dart";
import "package:get/get.dart";
import "package:image_picker/image_picker.dart";

class MyWidgetBoutton extends StatefulWidget {
  MyWidgetBoutton({super.key, required this.title});
  Widget title;

  @override
  State<MyWidgetBoutton> createState() => _MyWidgetBouttonState();
}

class _MyWidgetBouttonState extends State<MyWidgetBoutton> {
  Future<void> getLostData() async {
    final picker = await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.09,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xff5473F7),
          ),
          onPressed: () {
            getLostData();
          },
          child: widget.title),
    );
  }
}
