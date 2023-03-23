import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_clone/feature/notes/repository/notes_repository.dart';

class NoteCubit extends Cubit<void> {
  NoteCubit(NotesRepository repository)
      : _repository = repository,
        super(null);

  final NotesRepository _repository;

  void add(String data) {
    _repository.add(data);
  }

  void delete(String id) {
    throw UnimplementedError();
  }
}
