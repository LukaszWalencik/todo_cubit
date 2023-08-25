import 'package:flutter/material.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'TODO',
          style: TextStyle(fontSize: 40),
        ),
        Text(
          '0 items left',
          style: TextStyle(fontSize: 20, color: Colors.redAccent),
        )
      ],
    );
  }
}
