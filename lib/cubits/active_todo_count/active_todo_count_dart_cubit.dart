import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'active_todo_count_dart_state.dart';

class ActiveTodoCountDartCubit extends Cubit<ActiveTodoCountDartState> {
  ActiveTodoCountDartCubit() : super(ActiveTodoCountDartInitial());
}
