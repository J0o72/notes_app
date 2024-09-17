import 'package:flutter/material.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/notes_edit_view_body.dart';

class NotesEditView extends StatelessWidget {
  const NotesEditView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotesEditViewBody(
          note: note,
        ),
      ),
    );
  }
}
