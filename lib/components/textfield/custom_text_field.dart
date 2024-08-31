import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.minlines,
      this.suffixIcon});
  final String hintText;
  final TextEditingController controller;
  final int minlines;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      minLines: minlines,
      maxLines: 20,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: suffixIcon,
          isDense: true,
          filled: true,
          fillColor: const Color(0x12FFFFFF),
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Color(0xffB8B8B8),
              fontSize: 14,
              fontWeight: FontWeight.w500),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none)),
    );
  }
}
