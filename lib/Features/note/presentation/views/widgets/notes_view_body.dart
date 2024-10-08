import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/deleted_notes_cubit/deleted_notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/views/deleted_notes_view.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/notes_list_view.dart';
import 'package:notes_app/core/widgets/custom_app_bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          CustomAppBar(
            onPressed: () {
              BlocProvider.of<DeletedNotesCubit>(context)
                  .fetchAllDeletedNotes();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeletedNotesView(),
                ),
              );
            },
            text: 'Notes',
            icon: Icons.delete_sweep_rounded,
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
