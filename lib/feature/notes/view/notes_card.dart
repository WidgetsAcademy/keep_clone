import 'package:flutter/material.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({
    super.key,
    required this.data,
    required this.onDelete,
    required this.onEdit,
  });

  final String data;

  final VoidCallback onDelete;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                  'Card udtnrie uditre dtrn ueiadrn udiaertn dtrn dutriae dturia dtrrndtrndtruiaen ndturian dtuiren  nnumber $data'),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: onDelete,
              ),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: onEdit,
              ),
            ])
          ],
        ),
      ),
    );
  }
}
