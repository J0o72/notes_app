import 'package:flutter/material.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/deleted_notes_view_body.dart';

class DeletedNotesView extends StatelessWidget {
  const DeletedNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DeletedNotesViewBody(),
      ),
    );
  }
}
