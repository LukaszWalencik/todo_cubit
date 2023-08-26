import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/cubits/cubits.dart';

class ShowTodos extends StatelessWidget {
  const ShowTodos({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<TodoListCubit>().state.todos;
    return ListView.separated(
        primary: false,
        shrinkWrap: true,
        itemBuilder: ((BuildContext context, int index) => Text(
              todos[index].description,
              style: TextStyle(fontSize: 20),
            )),
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: todos.length);
  }
}
