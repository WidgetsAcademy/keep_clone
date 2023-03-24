import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_clone/feature/notes/notes.dart';

class NoteCubit extends Cubit<void> {
  NoteCubit(NotesRepository repository)
      : _repository = repository,
        super(null);

  final NotesRepository _repository;

  void add(String data) {
    _repository.add(data);
  }

  void delete(String id) {
    _repository.delete(id);
  }

  void update({required String id, required String data}) {
    _repository.update(NoteModel(id: id, data: data));
  }
}
