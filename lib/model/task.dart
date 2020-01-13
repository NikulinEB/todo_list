class ToDoTask {
  ToDoTask(this.title, this.description, this.deadline, this.success, this.subtasks);

  String title;

  String description;

  DateTime deadline;

  bool success;

  List<ToDoTask> subtasks;
}