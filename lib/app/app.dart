import 'package:flutter/material.dart';
import 'package:keep_clone/app/dependencies.dart';

import 'package:keep_clone/feature/notes/notes.dart';

class KeepApp extends StatelessWidget {
  const KeepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InjectRepositories(
      child: InjectBusinessLogic(
        child: MaterialApp(
          theme: ThemeData(
            cardTheme: CardTheme(
              color: Colors.yellow.shade200,
              margin: const EdgeInsets.all(8),
              elevation: 8,
            ),
          ),
          home: const NotesView(),
        ),
      ),
    );
  }
}
