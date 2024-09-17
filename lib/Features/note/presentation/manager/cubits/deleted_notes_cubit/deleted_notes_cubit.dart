import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/constants.dart';

part 'deleted_notes_state.dart';

class DeletedNotesCubit extends Cubit<DeletedNotesState> {
  DeletedNotesCubit() : super(DeletedNotesInitial());

  Color color = const Color(0xff77E4C8);

  void addDeletedNote(NoteModel note) async {
    note.color = color.value;
    emit(DeletedNotesSuccess());
    try {
      var notesBox = Hive.box<NoteModel>(kDeletedNotesBox);
      await notesBox.add(note);
      emit(DeletedNotesSuccess());
    } catch (e) {
      emit(DeletedNotesFailure(errorMessage: e.toString()));
    }
  }
}
