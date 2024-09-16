import 'package:flutter/material.dart';
import 'package:notes_app/core/widgets/custom_button.dart';
import 'package:notes_app/core/widgets/custom_text_field.dart';

class ModalBottomSheetContents extends StatelessWidget {
  const ModalBottomSheetContents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 32,
        ),
        CustomTextField(
          hintText: 'Title',
        ),
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          hintText: 'Content',
          maxLines: 5,
        ),
        SizedBox(
          height: 32,
        ),
        CustomButton(),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
