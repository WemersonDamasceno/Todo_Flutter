import 'package:flutter/material.dart';
import 'package:novo_projeto_flutter/models/item.dart';
import 'package:novo_projeto_flutter/pages/login.page.dart';

class ListPage extends StatefulWidget {
  var items = new List<Item>();

  ListPage() {
    items = [];
    items.add(Item(titulo: "Estudar React", hora: "08:00 - 10:00", done: true));
    items.add(
        Item(titulo: "Estudar Flutter", hora: "10:00 - 12:00", done: false));
    items.add(Item(titulo: "Jogar PUBG", hora: "17:00 - 20:00", done: false));
    items.add(
        Item(titulo: "Assistir Naruto", hora: "20:00 - 21:00", done: true));
  }

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  var txtTarefaControler = TextEditingController();

  void add() {
    txtTarefaControler.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: txtTarefaControler,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          decoration: InputDecoration(
            labelText: "Adicione uma nova tarefa",
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, position) {
          final item = widget.items[position];
          return (CheckboxListTile(
            title: Text(item.titulo),
            subtitle: Text(item.hora),
            key: Key(item.titulo),
            value: item.done,
            onChanged: (value) {
              setState(() {
                item.done = value;
              });
            },
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.items.add(
              Item(
                titulo: txtTarefaControler.text,
                hora: "08:00 - 10:00",
                done: false,
              ),
            );
            txtTarefaControler.clear();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
