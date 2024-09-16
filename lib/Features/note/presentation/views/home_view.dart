import 'package:flutter/material.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/custom_modal_bottom_sheet.dart';
import 'package:notes_app/Features/note/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CustomModalBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
