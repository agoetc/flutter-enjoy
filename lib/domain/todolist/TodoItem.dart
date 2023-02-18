class TodoItemId {
  int value;

  TodoItemId(this.value);
}

class TodoItem {
  TodoItemId id;
  String content;
  bool isCompleted = false;

  TodoItem(this.id, this.content);
}
