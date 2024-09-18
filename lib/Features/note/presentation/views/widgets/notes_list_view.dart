import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/deleted_notes_cubit/deleted_notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteItem(
                onPressed: () {
                  NoteModel deleteNote = NoteModel(
                      title: notes[index].title,
                      subTitle: notes[index].subTitle,
                      date: notes[index].date,
                      color: notes[index].color);
                  BlocProvider.of<DeletedNotesCubit>(context)
                      .addDeletedNote(deleteNote);
                  notes[index].delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: FontAwesomeIcons.trash,
                note: notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
