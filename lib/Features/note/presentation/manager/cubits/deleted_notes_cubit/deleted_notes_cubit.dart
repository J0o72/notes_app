import 'package:flutter_bloc/flutter_bloc.dart';

part 'deleted_notes_state.dart';

class DeletedNotesCubit extends Cubit<DeletedNotesState> {
  DeletedNotesCubit() : super(DeletedNotesInitial());
}
