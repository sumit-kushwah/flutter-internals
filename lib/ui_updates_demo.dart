import 'package:flutter/material.dart';
import 'package:flutter_internals/demo_buttons.dart';

class UIUpdatesDemo extends StatelessWidget {
  const UIUpdatesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    print('UIUpdatesDemo Build Called');
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Every Flutter Developer should have a basic understanding of how Flutter works internally.',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            'Do you understand how Flutter works internally?',
            textAlign: TextAlign.center,
          ),
          DemoButtons(),
        ],
      )),
    );
  }
}
