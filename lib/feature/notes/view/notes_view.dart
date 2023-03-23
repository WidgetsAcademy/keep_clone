import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_clone/feature/notes/notes.dart';
import 'package:keep_clone/feature/notes/state/note_cubit.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        BlocProvider<NoteCubit>(
          create: (context) => NoteCubit(context.read<NotesRepository>()),
          child: Builder(builder: (context) {
            return AddNotesBar(onSubmitted: (value) {
              context.read<NoteCubit>().add(value);
            });
          }),
        ),
        Expanded(
          child: BlocProvider<NotesListCubit>(
              create: (context) =>
                  NotesListCubit(context.read<NotesRepository>())..init(),
              child: const NotesGrid()),
        ),
      ]),
    );
  }
}
