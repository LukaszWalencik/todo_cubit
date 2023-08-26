import 'package:flutter/material.dart';
import 'package:todo_cubit/pages/todo_page/create_todo.dart';
import 'package:todo_cubit/pages/todo_page/search_and_filter_todo.dart';
import 'package:todo_cubit/pages/todo_page/show_todos.dart';
import 'package:todo_cubit/pages/todo_page/todo_header.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              children: [
                TodoHeader(),
                CreateTodo(),
                SizedBox(height: 20),
                SearchAndFilterTodo(),
                ShowTodos(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
