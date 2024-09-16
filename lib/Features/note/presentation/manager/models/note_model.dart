import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  final String title;
  final String subTitle;
  final String date;
  final int color;

  NoteModel({
    @HiveField(0) required this.title,
    @HiveField(1) required this.subTitle,
    @HiveField(2) required this.date,
    @HiveField(3) required this.color,
  });
}
