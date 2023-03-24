import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_clone/feature/notes/notes.dart';

class NotesGrid extends StatelessWidget {
  const NotesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesListCubit, List<NoteModel>>(
      builder: (context, notesList) {
        return GridView.count(
          crossAxisCount: 3,
          children: notesList
              .map(
                (note) => NotesCard(
                  data: note.data,
                  onEdit: () {
                    // ignore: inference_failure_on_function_invocation
                    showDialog(
                      context: context,
                      builder: (context) => UpdateNoteDialog(note: note),
                    );
                  },
                  onDelete: () {
                    context.read<NoteCubit>().delete(note.id);
                  },
                ),
              )
              .toList(),
        );
      },
    );
  }
}
