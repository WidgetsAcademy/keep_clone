import 'package:flutter/material.dart';

class AddNotesBar extends StatefulWidget {
  const AddNotesBar({
    super.key,
    required this.onSubmitted,
  });

  final Function(String) onSubmitted;

  @override
  State<AddNotesBar> createState() => _AddNotesBarState();
}

class _AddNotesBarState extends State<AddNotesBar> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Flexible(
          flex: 8,
          child: Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              color: Colors.grey.withOpacity(0.4),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
            ),
            width: double.infinity,
            // height: 70,
            child: TextField(
              controller: controller,
              onEditingComplete: () {
                final value = controller.value.text;
                if (value.isNotEmpty) {
                  widget.onSubmitted(value);
                  controller.clear();
                }
              },
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  widget.onSubmitted(value);
                  controller.clear();
                }
              },
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
