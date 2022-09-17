part of 'bottom_navigation_cubit.dart';

@immutable
abstract class BottomNavigationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BottomNavigationInitial extends BottomNavigationState {}

class ChangeItemBottomNavigation extends BottomNavigationState {
  final int index;

  ChangeItemBottomNavigation(this.index);

  @override
  List<Object?> get props => [index];

}
