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

    print(state);
  }

  void editTodo(String id, String toDoDescryption) {
    final editTodo = state.todos.map((Todo todo) {
      if (todo.id == id) {
        return Todo(
            id: todo.id,
            description: toDoDescryption,
            completed: todo.completed);
      }
      return todo;
    }).toList();
    emit(state.copyWith(todos: editTodo));
  }

  void togleTodo(String id) {
    final togleTodo = state.todos.map((Todo todo) {
      if (todo.id == id) {
        return Todo(
            id: todo.id, description: todo.description, completed: true);
      }
      return todo;
    }).toList();
    emit(state.copyWith(todos: togleTodo));
  }

  void removeTodo(Todo todo) {
    final savedTodos = state.todos.where((Todo t) => t.id != todo.id).toList();
    emit(state.copyWith(todos: savedTodos));
  }
}
