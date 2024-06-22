import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/assesment/logic/assessment_cubit.dart';
import 'package:measureapp/features/assesment/ui/widgets/check_button.dart';
import 'package:measureapp/features/assesment/ui/widgets/expandapble_text.dart';

class AssessmentView2 extends StatelessWidget {
  const AssessmentView2({super.key});

  void _recordAnswer(BuildContext context, String question, bool isChecked) {
    context
        .read<AssessmentCubit>()
        .recordAnswer(question, isChecked ? 'correct' : 'incorrect');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(61),
          Text(
            'Story ”Jill went to the shop”',
            style: TextStyles.primaryTextBold24,
            textAlign: TextAlign.center,
          ),
          verticalSpace(14),
          const ExpandableText(),
          verticalSpace(32),
          CheckButton(
            title: "Jill bought candies.",
            onChecked: (isChecked) {
              _recordAnswer(context, 'question2', isChecked);
            },
          ),
          verticalSpace(13),
          CheckButton(
            title: "Jill has a dog as a pet.",
            onChecked: (isChecked) {
              _recordAnswer(context, 'question3', isChecked);
            },
          ),
          verticalSpace(13),
          CheckButton(
            title: "Jill took a cab.",
            onChecked: (isChecked) {
              _recordAnswer(context, 'question4', isChecked);
            },
          ),
        ],
      ),
    );
  }
}
