import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/assesment/logic/assessment_cubit.dart';
import 'package:measureapp/features/assesment/ui/widgets/correct_incorrect_question_button.dart';

class AssessmentView1 extends StatefulWidget {
  const AssessmentView1({super.key});

  @override
  AssessmentView1State createState() => AssessmentView1State();
}

class AssessmentView1State extends State<AssessmentView1> {
  int? selectedIndex;

  void selectAnswer(int index, String answer) {
    setState(() {
      selectedIndex = index;
    });
    context.read<AssessmentCubit>().recordAnswer('question1', answer);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              CorrectIncorrectQuestionButton(
                index: 0,
                label: 'Correct',
                isSelected: selectedIndex == 0,
                onSelected: () => selectAnswer(0, 'correct'),
              ),
              verticalSpace(13),
              CorrectIncorrectQuestionButton(
                index: 1,
                label: 'Incorrect',
                isSelected: selectedIndex == 1,
                onSelected: () => selectAnswer(1, 'incorrect'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
