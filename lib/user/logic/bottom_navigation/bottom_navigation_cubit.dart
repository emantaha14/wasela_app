/// external package
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// core package
import 'package:flutter/material.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(BottomNavigationInitial());

  static BottomNavigationCubit get(BuildContext context)=>BlocProvider.of(context);

  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeItemBottomNavigation(index));
  }
}
