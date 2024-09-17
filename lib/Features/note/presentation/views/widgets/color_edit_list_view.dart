import 'package:flutter/material.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/color_item.dart';
import 'package:notes_app/constants.dart';

class ColorEditListView extends StatefulWidget {
  const ColorEditListView({super.key, this.onTap, required this.note});

  final void Function()? onTap;
  final NoteModel note;

  @override
  State<ColorEditListView> createState() => _ColorItemsListViewState();
}

class _ColorItemsListViewState extends State<ColorEditListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].value;
              widget.note.save();
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ColorItem(
                color: kColors[index],
                isSelected: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
