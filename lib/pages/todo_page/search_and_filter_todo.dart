import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/cubits/todo_search/todo_search_cubit.dart';
import 'package:todo_cubit/models/todo_model.dart';

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
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            filterButton(context, Filter.all),
            filterButton(context, Filter.active),
            filterButton(context, Filter.completed),
          ],
        )
      ],
    );
  }

  Widget filterButton(BuildContext context, Filter filter) {
    return TextButton(
        onPressed: () {},
        child: Text(filter == Filter.all
            ? 'All'
            : filter == Filter.active
                ? 'Active'
                : 'Completed'));
  }
}
