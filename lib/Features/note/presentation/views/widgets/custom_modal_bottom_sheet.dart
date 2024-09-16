import 'package:flutter/material.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/custom_model_bottom_sheet_contents.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: ModalBottomSheetContents(),
      ),
    );
  }
}
