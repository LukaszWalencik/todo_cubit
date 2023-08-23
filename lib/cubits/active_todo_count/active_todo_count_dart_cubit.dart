// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:todo_cubit/models/todo_model.dart';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_cubit/cubits/todo_list/todo_list_cubit.dart';

part 'active_todo_count_dart_state.dart';

class ActiveTodoCountCubit extends Cubit<ActiveTodoCountState> {
  final TodoListCubit todoListCubit;
  late final StreamSubscription todoListSubscryption;
  ActiveTodoCountCubit({required this.todoListCubit})
      : super(ActiveTodoCountState.initial()) {
    todoListSubscryption =
        todoListCubit.stream.listen((TodoListState todoListState) {
      print('TodoListState: $todoListState');
      final int currentActiveTodoCount = todoListState.todos
          .where((Todo todo) => !todo.completed)
          .toList()
          .length;
      emit(state.copyWith(activeTodoCount: currentActiveTodoCount));
    });
    @override
    Future<void> close() {
      todoListSubscryption.cancel();
      return super.close();
    }
  }
}
