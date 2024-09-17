import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Features/note/presentation/manager/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/color_item.dart';
import 'package:notes_app/constants.dart';

class ColorItemsListView extends StatefulWidget {
  const ColorItemsListView({super.key});

  @override
  State<ColorItemsListView> createState() => _ColorItemsListViewState();
}

class _ColorItemsListViewState extends State<ColorItemsListView> {
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
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
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
