import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/styles.dart';
import 'package:notes_app/core/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });

  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.textStyle24,
        ),
        CustomIconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
