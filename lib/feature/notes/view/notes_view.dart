import 'package:flutter/material.dart';
import 'package:keep_clone/feature/notes/notes.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          color: Colors.grey,
          width: 200,
          height: 70,
        ),
        const Expanded(
          child: NotesGrid(),
        ),
      ]),
    );
  }
}
