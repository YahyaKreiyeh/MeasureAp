import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/core/widgets/buttons/app_outlined_button.dart';
import 'package:measureapp/features/assesment/logic/check_button_cubit.dart';
import 'package:measureapp/features/assesment/logic/check_button_state.dart';

class CheckButton extends StatelessWidget {
  final String title;

  const CheckButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CheckButtonCubit(),
      child: BlocBuilder<CheckButtonCubit, CheckButtonState>(
        builder: (context, state) {
          final bool done = state is Done;
          return AppOutlinedButton(
            onPressed: () {
              context.read<CheckButtonCubit>().toggleDone();
            },
            minimumSize: Size(double.infinity, 77.h),
            color:
                done ? ColorsManager.orangeBorder : ColorsManager.fieldBorder,
            backgroundColor:
                done ? ColorsManager.white : ColorsManager.scaffoldBackground,
            radius: 13.r,
            child: Row(
              children: [
                Icon(
                  done ? Icons.check_circle : Icons.radio_button_unchecked,
                  color:
                      done ? ColorsManager.checkMarkOrange : ColorsManager.grey,
                  size: 27.r,
                ),
                horizontalSpace(12),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyles.primaryTextBold18,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
