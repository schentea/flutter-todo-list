import 'package:flutter/material.dart';
import 'package:todo_list/submit_button.dart';
import 'package:todo_list/todo_model.dart';

class InputField extends StatefulWidget {
  final ValueNotifier<List<TodoModel>> todoNotifier;
  
  const InputField({
    super.key, 
    required this.todoNotifier,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  // 값을 나중에 받아오려고
  late TextEditingController _controller;
  @override
  void initState() {
    
    _controller =TextEditingController(text : "");
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
              ),
            ),
          ),
          SizedBox(width: 15,),
          SubmitButton(todoNotifier: widget.todoNotifier, controller: _controller,),
        ],
      ),
    );
  }
}


