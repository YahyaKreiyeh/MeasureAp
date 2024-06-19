import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssessmentAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onPressed;
  const AssessmentAppBar({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new,
          size: 24.r,
        ),
        onPressed: onPressed,
      ),
      title: const Text('Assessment'),
      actions: [
        IconButton(
          icon: Icon(
            Icons.more_horiz_outlined,
            size: 24.r,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
