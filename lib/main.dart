import 'package:flutter/material.dart';

void main() => runApp(ToDoList());

class ToDoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'To-Do List'),
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
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openNewTaskPage,
        tooltip: 'New task',
        child: Icon(Icons.add),
      ),
    );
  }

  void _openNewTaskPage() {

  }
}
