import 'package:flutter/material.dart';
import 'package:keep_clone/feature/notes/notes.dart';

class NotesGrid extends StatelessWidget {
  const NotesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(
        100,
        (index) => NotesCard(
          data: index.toString(),
          onEdit: () {},
          onDelete: () {},
        ),
      ),
    );
  }
}
