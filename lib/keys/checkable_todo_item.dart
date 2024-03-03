import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/todo_item.dart';

class CheckableTodoItem extends StatefulWidget {
  const CheckableTodoItem(this.text, this.priority, {super.key});

  final String text;
  final Priority priority;

  @override
  State<CheckableTodoItem> createState() {
    return _CheckableTodoItem();
  }
}

class _CheckableTodoItem extends State<CheckableTodoItem> {
  var _done = false;

  void _setDone(bool? isChecked) {
    setState(() {
      _done = isChecked ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var icon = Icons.low_priority;

    if (widget.priority == Priority.normal) {
      icon = Icons.list;
    }

    if (widget.priority == Priority.urgent) {
      icon = Icons.notifications_active;
    }

    if (widget.priority == Priority.low) {
      icon = Icons.list_alt_outlined;
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Checkbox(value: _done, onChanged: _setDone),
          Icon(icon),
          const SizedBox(width: 12),
          Text(widget.text)
        ],
      ),
    );
  }
}
