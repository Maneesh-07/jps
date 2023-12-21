import 'package:flutter/material.dart';
import 'package:jps/constant/constant.dart';

class TextFormWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final Widget? suffixIcon;
  const TextFormWidget({
    super.key,
    required this.title,
    required this.controller,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: title,
          fillColor: kwhiteColor,
          suffixIcon: suffixIcon),
    );
  }
}
