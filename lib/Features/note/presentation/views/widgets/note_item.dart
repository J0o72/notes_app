import 'package:flutter/material.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/custom_list_tile.dart';
import 'package:notes_app/core/utils/styles.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CustomListTile(
              title: 'Flutter tips',
              subTitle: 'Build your career with Youssef Abdallah',
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
                bottom: 8,
                top: 16,
              ),
              child: Text(
                "May 10,2024",
                style: Styles.textStyle18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
