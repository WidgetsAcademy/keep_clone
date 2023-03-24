import 'package:flutter_test/flutter_test.dart';
import 'package:keep_clone/feature/notes/notes.dart';
import 'package:mocktail/mocktail.dart';

class MockNotesRepository extends Mock implements NotesRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue(const NoteModel(id: 'id', data: 'data'));
  });

  group('NotesRepository', () {
    test('can be instanciated', () {
      // arrange
      final mockRepository = MockNotesRepository();

      // act
      final cubit = NoteCubit(mockRepository);

      // assert

      expect(cubit, isA<NoteCubit>());
    });

    test('update delegates correctly', () {
      // arrange
      final mockRepository = MockNotesRepository();
      final cubit = NoteCubit(mockRepository);
      when(() => mockRepository.update(any())).thenReturn(null);

      const id = '42';
      const data = 'Hello WidgetsAcademy';

      // act
      cubit.update(id: id, data: data);

      // assert
      verify(() => mockRepository.update(const NoteModel(id: id, data: data)))
          .called(1);
    });
  });
}
