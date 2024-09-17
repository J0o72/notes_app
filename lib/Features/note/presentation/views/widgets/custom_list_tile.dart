import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/core/utils/styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String title;
  final String subTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text(
          title,
          style: Styles.textStyle26,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: Styles.textStyle18,
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          FontAwesomeIcons.trash,
          size: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}
