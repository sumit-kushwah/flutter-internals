import 'package:flutter/material.dart';

enum Priority { urgent, normal, low }

class TodoItem extends StatelessWidget {
  const TodoItem(this.text, this.priority, {super.key});

  final String text;
  final Priority priority;

  @override
  Widget build(BuildContext context) {
    IconData icon = Icons.abc;

    if (priority == Priority.normal) {
      icon = Icons.list;
    }

    if (priority == Priority.urgent) {
      icon = Icons.alarm_on;
    }

    if (priority == Priority.low) {
      icon = Icons.list_alt_outlined;
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [Icon(icon), const SizedBox(width: 12), Text(text)],
      ),
    );
  }
}
