import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/cubits/todo_search/todo_search_cubit.dart';

class SearchAndFilterTodo extends StatelessWidget {
  const SearchAndFilterTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              labelText: 'Search todos..',
              border: InputBorder.none,
              filled: true,
              prefixIcon: Icon(
                Icons.search,
              )),
          onChanged: (newSearchText) {
            if (newSearchText != null) {
              context.read<TodoSearchCubit>().searchActivities(newSearchText);
            }
          },
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
