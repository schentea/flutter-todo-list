import 'package:flutter/material.dart';
import 'package:todo_list/input_field.dart';
import 'package:todo_list/todo__list_widget.dart';
import 'package:todo_list/todo_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // <>제네릭(generic)
    final ValueNotifier<List<TodoModel>> todoNotifier = 
      ValueNotifier<List<TodoModel>>([]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("오늘 할일"),
        ),
        body: Column(
          children: [
            Expanded(
              child: TodoListWidget(todoNotifier: todoNotifier),
            ),
            InputField(todoNotifier: todoNotifier,)
          ],
        ),        
      ),
      debugShowCheckedModeBanner: false
    );
  }
}



