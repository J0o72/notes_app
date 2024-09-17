import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 32,
            backgroundColor: color,
          );
  }
}
