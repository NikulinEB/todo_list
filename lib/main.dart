import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/model/task_repository.dart';
import 'package:todo_list/routes/new_task.dart';
import 'package:todo_list/widgets/todolist_item.dart';

void main() => runApp(ToDoList());

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => TaskRepository(),
        child: MyHomePage(title: 'To-Do List'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Consumer<TaskRepository>(
        builder: (context, taskRepository, child) {
          return ListView.builder(
            itemCount: max(taskRepository.count, 1),
            itemBuilder: (context, index) {
              if (index < taskRepository.count) {
                return ToDoListItem(taskRepository.get(index));
              } else {
                return Text('There are no tasks yet.');
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openNewTaskPage,
        tooltip: 'New task',
        child: Icon(Icons.add),
      ),
    );
  }

  void _openNewTaskPage() {
    Navigator.of(context, rootNavigator: false).push(
      MaterialPageRoute<void>(
        builder: (BuildContext c) {
          return NewTaskPage(context);
        },
      ),
    );
  }
}
