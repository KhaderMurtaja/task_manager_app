import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager_app/presentation/feature/todos_page/data/models/all_todos_model/all_todos_model.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({
    required this.todo,
    required this.onChanged,
    required this.onPressed,
    super.key,
  });

  final Todo todo;
  final void Function(bool?)? onChanged;
  final VoidCallback onPressed;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(widget.todo.todo!)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                activeColor: const Color(0xffFFC342),
                value: widget.todo.completed,
                onChanged: widget.onChanged,
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: widget.onPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
