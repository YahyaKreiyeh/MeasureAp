import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/assets_managers/assets.gen.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/features/home/ui/screens/home_screen.dart';

class NavigationItem {
  final String iconPath;
  final String title;
  final Widget content;

  const NavigationItem({
    required this.iconPath,
    required this.title,
    required this.content,
  });
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;
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

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: items.map((item) => item.content).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorsManager.white,
        items:
            items.map((item) => _buildBottomNavigationBarItem(item)).toList(),
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        selectedItemColor: ColorsManager.orangeBorder,
        unselectedItemColor: ColorsManager.secondaryText,
        onTap: onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(NavigationItem item) {
    int index = items.indexOf(item);
    bool isSelected = index == selectedIndex;

    return BottomNavigationBarItem(
      icon: ColorFiltered(
        colorFilter: ColorFilter.mode(
          isSelected ? ColorsManager.orangeBorder : ColorsManager.secondaryText,
          BlendMode.srcIn,
        ),
        child: Image.asset(
          item.iconPath,
          width: 22.r,
          height: 22.r,
        ),
      ),
      label: item.title,
    );
  }
}
