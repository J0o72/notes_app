import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});

  final String hintText;
  final int maxLines;

  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Required';
        } else {
          return null;
        }
      },
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
