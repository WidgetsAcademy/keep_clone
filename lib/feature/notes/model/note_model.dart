import 'package:equatable/equatable.dart';

class NoteModel extends Equatable {

  const NoteModel({required this.data, required this.id});
  final String data;
  final String id;

  @override
  List<Object?> get props => [data, id];
}
