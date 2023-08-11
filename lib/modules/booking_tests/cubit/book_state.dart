part of 'book_cubit.dart';

@immutable
sealed class BookState {}

final class BookInitial extends BookState {}
final class BookChangeBottomNavBarState extends BookState {}
final class BookCreateDBStateState extends BookState {}
final class BookInsertIntoDBState extends BookState {}
final class BooklodingDataState extends BookState {}
final class BookGetDataFromDBState extends BookState {}
final class BookDeleteDataDBState extends BookState {}
final class BookToggelRadioValueState extends BookState {}
final class BookChangePageNumberState extends BookState {}

