import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/constants.dart';

part 'deleted_notes_state.dart';

class DeletedNotesCubit extends Cubit<DeletedNotesState> {
  DeletedNotesCubit() : super(DeletedNotesInitial());

  List<NoteModel>? notes;

  void addDeletedNote(NoteModel note) async {
    emit(DeletedNotesLoading());
    try {
      var deletedNoteBox = Hive.box<NoteModel>(kDeletedNotesBox);
      await deletedNoteBox.add(note);
      emit(DeletedNotesSuccess());
    } catch (e) {
      debugPrint('error => ${e.toString()}');
      emit(DeletedNotesFailure(errorMessage: e.toString()));
    }
  }

  void fetchAllDeletedNotes() {
    var notesBox = Hive.box<NoteModel>(kDeletedNotesBox);
    notes = notesBox.values.toList();
    emit(DeletedNotesSuccess());
  }

  void emptyDeletedNotes() {
    var notesBox = Hive.box<NoteModel>(kDeletedNotesBox);
    notesBox.deleteAll(notesBox.keys);
    emit(DeletedNotesSuccess());
  }
}
