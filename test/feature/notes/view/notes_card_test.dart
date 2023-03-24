import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:keep_clone/feature/notes/notes.dart';

void main() {
  testWidgets('NotesCard renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
          home: NotesCard(
        data: 'Hello WidgetsAcademy',
        onDelete: () {},
        onEdit: () {},
      ),),
    );

    final textFinder = find.text('Hello WidgetsAcademy');
    expect(textFinder, findsOneWidget);
  });

  testWidgets('NotesCard buttons work', (WidgetTester tester) async {
    var editTapped = false;
    var deleteTapped = false;
    await tester.pumpWidget(
      MaterialApp(
          home: NotesCard(
        data: 'Hello WidgetsAcademy',
        onDelete: () {
          deleteTapped = true;
        },
        onEdit: () {
          editTapped = true;
        },
      ),),
    );

    final deleteFinder = find.byIcon(Icons.delete);
    final editFinder = find.byIcon(Icons.edit);

    await tester.tap(deleteFinder);
    expect(deleteTapped, true);

    await tester.tap(editFinder);
    expect(editTapped, true);
  });
}
