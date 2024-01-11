import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      child: Text('TEXT'),
      gradient: LinearGradient(colors: [Colors.pink, Colors.purple]),
      strokeWidth: 4,
      radius: Radius.circular(8),
    );
  }
}
