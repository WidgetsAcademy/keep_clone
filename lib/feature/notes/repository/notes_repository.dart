import 'dart:async';

import 'package:keep_clone/feature/notes/notes.dart';
import 'package:uuid/uuid.dart';

class NotesRepository {
  final Map<String, NoteModel> _notes = {};

  final _notesController = StreamController<List<NoteModel>>.broadcast();

  Stream<List<NoteModel>> watchNotes() => _notesController.stream;

  List<NoteModel> getNotes() => _notes.values.toList();

  void add(String data) {
    final id = const Uuid().v4();
    final model = NoteModel(id: id, data: data);
    _notes[id] = model;
    _notesController.add(_notes.values.toList());
  }
}
