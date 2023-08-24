import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'filter_todos_state.dart';

class FilterTodosCubit extends Cubit<FilterTodosState> {
  FilterTodosCubit() : super(FilterTodosInitial());
}
