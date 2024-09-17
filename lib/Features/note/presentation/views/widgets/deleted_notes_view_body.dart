import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/deleted_notes_cubit/deleted_notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/note_item.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/notes_list_view.dart';
import 'package:notes_app/core/widgets/custom_app_bar.dart';

class DeletedNotesViewBody extends StatelessWidget {
  const DeletedNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeletedNotesCubit(),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomAppBar(
              text: 'Deleted Notes',
              icon: Icons.abc,
            ),
            Expanded(
              child: DeletedNotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}

class DeletedNotesListView extends StatelessWidget {
  const DeletedNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeletedNotesCubit, DeletedNotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<DeletedNotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteItem(
                note: notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
