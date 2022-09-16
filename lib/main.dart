
import 'package:flutter/material.dart';
import 'package:todolist/views/login/login.dart';
import 'package:todolist/views/todoList/todo_list.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TodoList() ,
    );
  }
}


