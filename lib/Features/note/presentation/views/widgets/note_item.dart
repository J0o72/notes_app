import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/Features/note/presentation/views/notes_edit_view.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/custom_list_tile.dart';
import 'package:notes_app/core/utils/styles.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NotesEditView(
            note: note,
          ),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomListTile(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                title: note.title,
                subTitle: note.subTitle,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                  bottom: 8,
                  top: 16,
                ),
                child: Text(
                  note.date,
                  style: Styles.textStyle18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
