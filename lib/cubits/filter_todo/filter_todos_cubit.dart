// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:todo_cubit/cubits/todo_filter/todo_filter_cubit.dart';
import 'package:todo_cubit/cubits/todo_list/todo_list_cubit.dart';
import 'package:todo_cubit/cubits/todo_search/todo_search_cubit.dart';
import 'package:todo_cubit/models/todo_model.dart';

part 'filter_todos_state.dart';

class FilterTodosCubit extends Cubit<FilterTodoState> {
  late final StreamSubscription todoFilterSubscryption;
  late final StreamSubscription todoSearchSubscryption;
  late final StreamSubscription todoListSubscryption;
  final TodoFilterCubit todoFilterCubit;
  final TodoSearchCubit todoSearchCubit;
  final TodoListCubit todoListCubit;
  FilterTodosCubit({
    required this.todoFilterCubit,
    required this.todoSearchCubit,
    required this.todoListCubit,
  }) : super(FilterTodoState.initial()) {
    todoFilterSubscryption =
        todoFilterCubit.stream.listen((TodoFilterState todoFilterState) {});

    todoSearchSubscryption =
        todoSearchCubit.stream.listen((TodoSearchState todoSearchState) {});

    todoListSubscryption =
        todoListCubit.stream.listen((TodoListState todoListState) {});
  }
}
