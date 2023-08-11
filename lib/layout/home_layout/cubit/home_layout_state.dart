part of 'home_layout_cubit.dart';

@immutable
sealed class HomeLayoutState {}

final class HomeLayoutInitial extends HomeLayoutState {}
final class BookChangeBottomNavBarState extends HomeLayoutState {}
