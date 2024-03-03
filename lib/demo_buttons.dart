import 'package:flutter/material.dart';

class DemoButtons extends StatefulWidget {
  const DemoButtons({super.key});
  @override
  State<DemoButtons> createState() {
    return _DemoButtons();
  }
}

class _DemoButtons extends State<DemoButtons> {
  var _isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    print("DemoButtons Build Called");
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = false;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    _isUnderstood = true;
                  });
                },
                child: const Text('Yes')),
            const SizedBox(height: 24),
          ],
        ),
        if (_isUnderstood) const Text('Great!'),
      ],
    );
  }
}
