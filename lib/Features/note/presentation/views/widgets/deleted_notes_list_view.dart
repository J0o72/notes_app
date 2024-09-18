import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/deleted_notes_cubit/deleted_notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/note_item.dart';

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
              return Opacity(
                opacity: 0.4,
                child: NoteItem(
                  onPressed: () {
                    NoteModel deleteNote = NoteModel(
                        title: notes[index].title,
                        subTitle: notes[index].subTitle,
                        date: notes[index].date,
                        color: notes[index].color);
                    BlocProvider.of<NotesCubit>(context)
                        .restoreDeletedNote(deleteNote);
                    notes[index].delete();
                    BlocProvider.of<DeletedNotesCubit>(context)
                        .fetchAllDeletedNotes();
                  },
                  size: 32,
                  icon: Icons.restart_alt,
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
