import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final double radius;
  final bool isPassword;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.radius = 10,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
