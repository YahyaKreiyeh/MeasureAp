import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/features/navigation/data/models/navigation_item.dart';
import 'package:measureapp/features/navigation/logic/navigation_cubit.dart';
import 'package:measureapp/features/navigation/logic/navigation_state.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: Scaffold(
        body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            final items = context.read<NavigationCubit>().items;
            return IndexedStack(
              index: state.selectedIndex,
              children: items.map((item) => item.content).toList(),
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            final items = context.read<NavigationCubit>().items;
            return BottomNavigationBar(
              backgroundColor: ColorsManager.white,
              items: items
                  .map((item) => _buildBottomNavigationBarItem(
                      item, state.selectedIndex, items.indexOf(item)))
                  .toList(),
              currentIndex: state.selectedIndex,
              showUnselectedLabels: true,
              selectedItemColor: ColorsManager.orangeBorder,
              unselectedItemColor: ColorsManager.secondaryText,
              onTap: (index) =>
                  context.read<NavigationCubit>().updateIndex(index),
            );
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      NavigationItem item, int selectedIndex, int currentIndex) {
    bool isSelected = currentIndex == selectedIndex;
    return BottomNavigationBarItem(
      icon: Image.asset(
        item.iconPath,
        width: 22.r,
        height: 22.r,
        color: isSelected
            ? ColorsManager.orangeBorder
            : ColorsManager.secondaryText,
      ),
      label: item.title,
    );
  }
}
