import 'package:flutter/material.dart';
import 'package:todo_list/model/task.dart';

class ToDoListItem extends StatefulWidget {
  ToDoListItem(this.task);

  final ToDoTask task;

  @override
  State<StatefulWidget> createState() => ToDoListItemState();
}

class ToDoListItemState extends State<ToDoListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(widget.task.title),
          Text(widget.task.description),
        ],
      ),
    );
  }
}
