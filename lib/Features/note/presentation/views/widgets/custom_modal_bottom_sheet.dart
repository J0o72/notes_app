import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/note/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/custom_model_bottom_sheet_contents.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }

              if (state is AddNoteFailure) {}
            },
            builder: (context, state) {
              return const ModalBottomSheetContents();
            },
          ),
        ),
      ),
    );
  }
}
