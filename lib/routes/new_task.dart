import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/model/task.dart';
import 'package:todo_list/model/task_repository.dart';

class NewTaskPage extends StatefulWidget {
  NewTaskPage(this.context);

  final BuildContext context;

  @override
  State<StatefulWidget> createState() => NewTaskPageState();
}

class NewTaskPageState extends State<NewTaskPage> {
  String title = '';

  String description = '';

  @override
  Widget build(BuildContext context) {
    var rep = Provider.of<TaskRepository>(widget.context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('New Task'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (t) {
              title = t;
            },
          ),
          TextField(
            onChanged: (desc) {
              description = desc;
            },
            maxLines: 5,
          ),
          FlatButton(
            child: Text('Add'),
            onPressed: () {
              if (title.isNotEmpty && description.isNotEmpty) {
                rep.add(ToDoTask(title, description, null, null, null));
                Navigator.pop(context);
              }
            },
          )
        ],
      ),
    );
  }
}
