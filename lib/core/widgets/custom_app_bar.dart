import 'package:flutter/material.dart';
import 'package:notes_app/core/utils/styles.dart';
import 'package:notes_app/core/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: Styles.textStyle24,
        ),
        const CustomIconButton(),
      ],
    );
  }
}
