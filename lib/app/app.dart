import 'package:flutter/material.dart';

import '../feature/notes/notes.dart';

class KeepApp extends StatelessWidget {
  const KeepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardTheme: CardTheme(
          color: Colors.yellow.shade200,
          margin: const EdgeInsets.all(8),
          elevation: 8,
        ),
      ),
      home: const NotesView(),
    );
  }
}
