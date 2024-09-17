part of 'deleted_notes_cubit.dart';

abstract class DeletedNotesState {}

final class DeletedNotesInitial extends DeletedNotesState {}

final class DeletedNotesLoading extends DeletedNotesState {}

final class DeletedNotesSuccess extends DeletedNotesState {}

final class DeletedNotesFailure extends DeletedNotesState {
  final String errorMessage;

  DeletedNotesFailure({required this.errorMessage});
}
