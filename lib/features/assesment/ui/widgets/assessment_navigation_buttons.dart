import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/widgets/buttons/app_elevated_button.dart';
import 'package:measureapp/core/widgets/buttons/app_outlined_button.dart';

class AssessmentNavigationButtons extends StatelessWidget {
  final void Function()? onBackPressed;
  final void Function()? onContinuePressed;
  final int currentStep;
  const AssessmentNavigationButtons({
    super.key,
    required this.currentStep,
    required this.onBackPressed,
    required this.onContinuePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (currentStep > 0)
          AppOutlinedButton(
            onPressed: onBackPressed,
            child: currentStep == 4
                ? const Text('Back')
                : Icon(
                    Icons.arrow_back_ios_new,
                    size: 24.r,
                    color: ColorsManager.black,
                  ),
          ),
        horizontalSpace(10),
        Expanded(
          child: AppElevatedButton(
            onPressed: onContinuePressed,
            text: currentStep == 4 ? 'Print' : 'Continue',
          ),
        ),
      ],
    );
  }
}
