import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/deleted_notes_cubit/deleted_notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/Features/note/presentation/views/notes_edit_view.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/custom_list_tile.dart';
import 'package:notes_app/core/utils/styles.dart';

class NoteItem extends StatelessWidget {
  const NoteItem(
      {super.key,
      required this.note,
      this.icon,
      this.size,
      required this.onPressed});

  final NoteModel note;
  final IconData? icon;
  final double? size;
  final void Function() onPressed;

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
                size: size,
                icon: icon,
                onPressed: onPressed,
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
