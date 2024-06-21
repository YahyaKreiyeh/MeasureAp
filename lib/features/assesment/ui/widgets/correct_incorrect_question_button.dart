import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/widgets/buttons/app_outlined_button.dart';
import 'package:measureapp/features/assesment/logic/correct_incorrect_button_cubit.dart';
import 'package:measureapp/features/assesment/logic/correct_incorrect_button_state.dart';

class CorrectIncorrectQuestionButton extends StatelessWidget {
  final int index;
  final String label;

  const CorrectIncorrectQuestionButton({
    super.key,
    required this.index,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CorrectIncorrectButtonCubit,
        CorrectIncorrectButtonState>(
      builder: (context, state) {
        int? selectedIndex = state.maybeWhen(
          selected: (index) => index,
          orElse: () => null,
        );

        return AppOutlinedButton(
          onPressed: () {
            context.read<CorrectIncorrectButtonCubit>().selectButton(index);
          },
          minimumSize: Size(double.infinity, 77.h),
          color: selectedIndex == index
              ? ColorsManager.orangeBorder
              : ColorsManager.fieldBorder,
          backgroundColor: selectedIndex == index
              ? ColorsManager.white
              : ColorsManager.scaffoldBackground,
          radius: 13.r,
          child: Text(label),
        );
      },
    );
  }
}
