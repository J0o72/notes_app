import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Features/note/presentation/manager/models/note_model.dart';
import 'package:notes_app/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  void fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }

  void restoreDeletedNote(NoteModel note) async {
    emit(NotesLoading());
    try {
      var restoredeletedNoteBox = Hive.box<NoteModel>(kNotesBox);
      await restoredeletedNoteBox.add(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFailure(errorMessage: e.toString()));
    }
  }
}
