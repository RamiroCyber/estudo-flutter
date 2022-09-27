import 'package:flutter/material.dart';

class TodoListTitle extends StatelessWidget {
  const TodoListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[300],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "data",
          style: TextStyle(fontSize: 12),
        ),
        Text(
          "data",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ]),
    );
  }
}
