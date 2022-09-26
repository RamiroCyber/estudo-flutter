import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final TextEditingController todoController = TextEditingController();

  var data = '';

  List<String> todos = [];

  var  tarefa = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: todoController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Adicione uma tarefa",
                          hintText: "Ex. Limpar a casa"),
                    ),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {
                      data = DateTime.now().toString();
                      String text = todoController.text;
                      setState(() {
                        todos.add(text);
                      });
                      todoController.clear();
                    },
                    style:
                        ElevatedButton.styleFrom(padding: EdgeInsets.all(14)),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (String todo in todos)
                      ListTile(
                        title: Text(todo),
                        subtitle: Text('Data: $data'),
                        leading: Icon(Icons.access_alarm, size: 40),
                        onTap: () {
                          print("Tarefa: $todo");
                        },
                      ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Text("Você possue $tarefa tarefas pendentes"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("LIMPAR TUDO"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
