part of 'filter_todos_cubit.dart';

sealed class FilterTodosState extends Equatable {
  const FilterTodosState();

  @override
  List<Object> get props => [];
}

final class FilterTodosInitial extends FilterTodosState {}
