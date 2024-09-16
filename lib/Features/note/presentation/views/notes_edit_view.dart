import 'package:flutter/material.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/notes_edit_view_body.dart';

class NotesEditView extends StatelessWidget {
  const NotesEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NotesEditViewBody(),
      ),
    );
  }
}
