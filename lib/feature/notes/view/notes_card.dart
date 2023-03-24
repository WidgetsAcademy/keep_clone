import 'package:flutter/material.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({
    required this.data,
    required this.onDelete,
    required this.onEdit,
    super.key,
  });

  final String data;

  final VoidCallback onDelete;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(data),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: onDelete,
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: onEdit,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
