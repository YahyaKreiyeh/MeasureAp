import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/core/utils/assets_managers/assets.gen.dart';
import 'package:measureapp/features/home/ui/screens/home_screen.dart';
import 'package:measureapp/features/navigation/data/models/navigation_item.dart';
import 'package:measureapp/features/navigation/logic/navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());
  final List<NavigationItem> items = [
    NavigationItem(
      iconPath: AssetsManager.icons.home.path,
      title: 'Home',
      content: const HomeScreen(),
    ),
    NavigationItem(
      iconPath: AssetsManager.icons.patients.path,
      title: 'Patients',
      content: const Center(
        child: Text('Patients'),
      ),
    ),
    NavigationItem(
      iconPath: AssetsManager.icons.history.path,
      title: 'History',
      content: const Center(
        child: Text('History'),
      ),
    ),
    NavigationItem(
      iconPath: AssetsManager.icons.settings.path,
      title: 'Settings',
      content: const Center(
        child: Text('Settings'),
      ),
    ),
  ];

  void updateIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }
}
