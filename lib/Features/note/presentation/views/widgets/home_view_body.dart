import 'package:flutter/material.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/note_item.dart';
import 'package:notes_app/core/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}
