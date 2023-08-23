import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_cubit/models/todo_model.dart';

part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> {
  TodoListCubit() : super(TodoListState.initial());

  void addTodo(String toDoDescryption) {
    final newTodo = Todo(description: toDoDescryption);
    final newTodos = [...state.todos, newTodo];
    emit(state.copyWith(todos: newTodos));
  }
}
