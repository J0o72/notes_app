import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/utils/styles.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "Flutter tips",
                style: Styles.textStyle26,
              ),
            ),
            subtitle: Text(
              "Build your career with Youssef Abdallah",
              style: Styles.textStyle18,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                size: 24,
                color: Colors.black,
              ),
            ),
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
    );
  }
}
