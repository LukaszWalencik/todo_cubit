// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'filter_todos_cubit.dart';

class FilterTodoState extends Equatable {
  final List<Todo> filterTodos;
  FilterTodoState({
    required this.filterTodos,
  });
  factory FilterTodoState.initial() {
    return FilterTodoState(filterTodos: []);
  }

  @override
  List<Object> get props => [filterTodos];

  @override
  bool get stringify => true;

  FilterTodoState copyWith({
    List<Todo>? filterTodos,
  }) {
    return FilterTodoState(
      filterTodos: filterTodos ?? this.filterTodos,
    );
  }
}
