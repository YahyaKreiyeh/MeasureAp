import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/assesment/logic/correct_incorrect_button_cubit.dart';
import 'package:measureapp/features/assesment/ui/widgets/correct_incorrect_question_button.dart';

class AssessmentView1 extends StatelessWidget {
  const AssessmentView1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CorrectIncorrectButtonCubit(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(72),
            Text(
              'How many fingers do you see?',
              style: TextStyles.primaryTextBold24,
              textAlign: TextAlign.center,
            ),
            verticalSpace(14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0).w,
              child: Text(
                'Please show the patient a certain amount of fingers and follow their reaction.',
                style: TextStyles.secondaryTextMedium14,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(32),
            Column(
              children: [
                const CorrectIncorrectQuestionButton(
                  index: 0,
                  label: 'Correct',
                ),
                verticalSpace(13),
                const CorrectIncorrectQuestionButton(
                  index: 1,
                  label: 'Incorrect',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
