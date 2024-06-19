import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/colors.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;
  const StepIndicator({
    super.key,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: index <= currentStep
                ? ColorsManager.black
                : ColorsManager.fieldBorder,
            borderRadius: BorderRadius.circular(8),
          ),
          width: 40.w,
          height: 6.h,
        );
      }),
    );
  }
}
