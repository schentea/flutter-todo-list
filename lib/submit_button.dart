import 'package:flutter/material.dart';
import 'package:todo_list/todo_model.dart';

class SubmitButton extends StatelessWidget {
  final ValueNotifier<List<TodoModel>> todoNotifier;
  final TextEditingController controller;

  const SubmitButton({
    super.key, required this.todoNotifier, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(color: Colors.purple.shade300, shape: BoxShape.circle),
      child: InkWell(
        onTap: () {
          if(controller.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("공백은 추가가 불가능합니다."))
            );
            return;
          }
          // todoNotifier에 값을 추가
          todoNotifier.value = [...todoNotifier.value,TodoModel(title: controller.text)];
          controller.clear();
        },
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape : BoxShape.circle,
          ),
          child: Icon(Icons.add, color: Colors.white,),
        ),
      ),
    );
  }
}