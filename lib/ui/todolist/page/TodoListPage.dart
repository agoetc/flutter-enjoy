import 'package:flutter/material.dart';
import 'package:flutter_enjoy/domain/todolist/TodoItem.dart';

import '../component/TodoItems.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  int num = 0;
  List<TodoItem> todoItems = [];

  void _createTodoItem() {
    TodoItem item = TodoItem(TodoItemId(num), "num of $num");

    setState(() {
      todoItems.add(item);
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TodoItems(todoItems),
        floatingActionButton: FloatingActionButton(
            onPressed: _createTodoItem,
            tooltip: 'Increment',
            child: const Icon(Icons.add)));
  }
}
