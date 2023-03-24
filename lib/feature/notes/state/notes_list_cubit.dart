import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_clone/feature/notes/notes.dart';

class NotesListCubit extends Cubit<List<NoteModel>> {
  NotesListCubit(NotesRepository repository)
      : _repository = repository,
        super([]);

  final NotesRepository _repository;

  StreamSubscription<List<NoteModel>>? _subscription;

  void init() {
    final initialData = _repository.getNotes();
    emit(initialData.reversed.toList());
    _subscription = _repository
        .watchNotes()
        .listen((listOfNotes) => emit(listOfNotes.reversed.toList()));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
