import 'package:flutter/material.dart';
import 'package:flutter_enjoy/domain/todolist/TodoItem.dart';
import 'package:flutter_enjoy/ui/todolist/component/TodoItemText.dart';

class TodoItems extends StatelessWidget {
  final List<TodoItem> todoItems;

  const TodoItems(this.todoItems, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: todoItems
          .map(
            (item) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TodoItemText(item.id.value.toString()),
                TodoItemText(item.content),
                TodoItemText(item.isCompleted.toString()),
              ],
            ),
          )
          .toList(),
    );
  }
}
