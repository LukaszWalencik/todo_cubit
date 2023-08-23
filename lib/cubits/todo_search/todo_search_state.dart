// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'todo_search_cubit.dart';

class TodoSearchState extends Equatable {
  final String searchText;
  TodoSearchState({
    required this.searchText,
  });

  factory TodoSearchState.initial() {
    return TodoSearchState(searchText: '');
  }

  TodoSearchState copyWith({
    String? searchText,
  }) {
    return TodoSearchState(
      searchText: searchText ?? this.searchText,
    );
  }

  @override
  String toString() => 'TodoSearchState(searchText: $searchText)';

  @override
  List<Object> get props => [searchText];
}
