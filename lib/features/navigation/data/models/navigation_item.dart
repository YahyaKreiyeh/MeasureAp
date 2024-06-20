import 'package:flutter/material.dart';

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
