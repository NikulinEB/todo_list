import 'package:flutter/material.dart';
import 'package:todo_list/model/task.dart';

class TaskRepository extends ChangeNotifier {
  
  List<ToDoTask> _tasks = [];

  int get count => _tasks.length; 

  void add(ToDoTask task) {
    _tasks.add(task);
    notifyListeners();
  }

  ToDoTask get(int index) {
    if (index < _tasks.length) {
      return _tasks[index];
    } else {
      throw Exception('Task $index not found.');
    }
  }

  void remove(ToDoTask task) {
    _tasks.remove(task);
    notifyListeners();
  }
}