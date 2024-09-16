import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      cursorWidth: 1,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: makeTextFieldBorderDecoration(),
        enabledBorder: makeTextFieldBorderDecoration(),
        focusedBorder: makeTextFieldBorderDecoration(Colors.teal),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder makeTextFieldBorderDecoration([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
