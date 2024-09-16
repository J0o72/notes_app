import 'package:flutter/material.dart';
import 'package:notes_app/Features/note/presentation/views/home_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
