import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/note_item.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/notes_list_view.dart';
import 'package:notes_app/core/widgets/custom_app_bar.dart';

class DeletedNotesViewBody extends StatelessWidget {
  const DeletedNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}

class DeletedNotesListView extends StatelessWidget {
  const DeletedNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        // return  NoteItem(note: );
      },
    );
  }
}
