import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class AppFloatingActionButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const AppFloatingActionButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.9.sw,
      child: FloatingActionButton(
        backgroundColor: ColorsManager.black,
        foregroundColor: ColorsManager.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(70).r),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyles.whiteBold18,
        ),
      ),
    );
  }
}
