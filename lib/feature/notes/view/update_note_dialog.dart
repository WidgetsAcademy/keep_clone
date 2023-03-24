import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_clone/feature/notes/notes.dart';

class UpdateNoteDialog extends StatefulWidget {
  const UpdateNoteDialog({
    required this.note,
    super.key,
  });

  final NoteModel note;

  @override
  State<UpdateNoteDialog> createState() => _UpdateNoteDialogState();
}

class _UpdateNoteDialogState extends State<UpdateNoteDialog> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.note.data);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CloseButton(),
              IconButton(
                icon: const Icon(Icons.save),
                onPressed: () {
                  context
                      .read<NoteCubit>()
                      .update(id: widget.note.id, data: controller.value.text);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          TextField(controller: controller),
        ],
      ),
    );
  }
}
