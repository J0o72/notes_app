import 'package:flutter/material.dart';
import 'package:notes_app/core/widgets/custom_button.dart';
import 'package:notes_app/core/widgets/custom_text_field.dart';

class ModalBottomSheetContents extends StatefulWidget {
  const ModalBottomSheetContents({
    super.key,
  });

  @override
  State<ModalBottomSheetContents> createState() =>
      _ModalBottomSheetContentsState();
}

class _ModalBottomSheetContentsState extends State<ModalBottomSheetContents> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          const CustomTextFormField(
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextFormField(
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
