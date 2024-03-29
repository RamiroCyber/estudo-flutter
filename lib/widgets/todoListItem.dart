import 'package:flutter/material.dart';

import '../models/todo.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({Key? key, required this.todo}) : super(key: key);

  final Todo todo;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[100],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          DateTime.now().toString(),
          style: TextStyle(fontSize: 12),
        ),
        Text(
          todo.title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ]),
    );
  }
}
