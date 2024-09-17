import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/Features/note/presentation/views/notes_view.dart';
import 'package:notes_app/constants.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

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
      home: const NotesView(),
    );
  }
}
