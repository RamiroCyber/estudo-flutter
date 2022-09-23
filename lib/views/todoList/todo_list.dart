import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
   TodoList({Key? key}) : super(key: key);

var data = DateTime.now();


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
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Adicione uma tarefa",
                          hintText: "Ex. Limpar a casa"),
                    ),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
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
                ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text('Tarefa 1'),
                      subtitle: Text('$data'),
                      leading: Icon(Icons.access_alarm,size: 40),
                      onTap: () {
                        print("object");
                      },
                    ),
                  ],
                ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Text("Você possue 0 tarefas pendentes"),
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
