import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/notes_list_view.dart';
import 'package:notes_app/core/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomAppBar(),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
