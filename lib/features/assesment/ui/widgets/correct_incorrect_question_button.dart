import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/widgets/buttons/app_outlined_button.dart';

class CorrectIncorrectQuestionButton extends StatelessWidget {
  final int index;
  final String label;
  final bool isSelected;
  final VoidCallback onSelected;

  const CorrectIncorrectQuestionButton({
    super.key,
    required this.index,
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AppOutlinedButton(
      onPressed: onSelected,
      minimumSize: Size(double.infinity, 77.h),
      color:
          isSelected ? ColorsManager.orangeBorder : ColorsManager.fieldBorder,
      backgroundColor:
          isSelected ? ColorsManager.white : ColorsManager.scaffoldBackground,
      radius: 13.r,
      child: Text(label),
    );
  }
}
