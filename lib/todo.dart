import 'package:flutter/material.dart';
import 'package:todo/helpers/sharedprefrences.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  final TextEditingController todocontroller = TextEditingController();
  List<String> todoList = [];
  void initstate() {
    todoList = SharedPrefrencesHelper.getStringList(
      SharedPrefrencesHelper.stringListKey,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo")),
      body: Column(
        children: [
          TextFormField(controller: todocontroller),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              setState(() {
                todoList.add(todocontroller.text.trim());
                //setprefrences

                todocontroller.clear();
              });
            },
            child: Text("Add"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                return todoList.isEmpty
                    ? Center(child: Text('No todos'))
                    : Row(
                        children: [
                          Text(todoList[index]),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                todoList.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete, color: Colors.redAccent),
                          ),
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
