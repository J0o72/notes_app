import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/deleted_notes_cubit/deleted_notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/deleted_notes_list_view.dart';
import 'package:notes_app/core/widgets/custom_app_bar.dart';
import 'package:notes_app/core/widgets/custom_button.dart';

class DeletedNotesViewBody extends StatelessWidget {
  const DeletedNotesViewBody({super.key});

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
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            text: 'Deleted Notes',
            icon: Icons.arrow_back,
          ),
          const Expanded(
            child: DeletedNotesListView(),
          ),
          DeleteAllButton(
            onTap: () {
              BlocProvider.of<DeletedNotesCubit>(context).emptyDeletedNotes();
              BlocProvider.of<DeletedNotesCubit>(context)
                  .fetchAllDeletedNotes();
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
