import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/assesment/logic/assessment_cubit.dart';
import 'package:measureapp/features/assesment/ui/widgets/animal_toggle.dart';

class AssessmentView4 extends StatefulWidget {
  const AssessmentView4({super.key});

  @override
  AssessmentView4State createState() => AssessmentView4State();
}

class AssessmentView4State extends State<AssessmentView4> {
  final Map<String, String> answers = {};
  bool isDialogShown = false;
  int correctAnswersCount = 0;

  void _recordAnswer(String question, bool isCorrect) {
    setState(() {
      answers[question] = isCorrect ? 'correct' : 'incorrect';
      correctAnswersCount =
          answers.values.where((answer) => answer == 'correct').length;
    });
    context
        .read<AssessmentCubit>()
        .recordAnswer(question, isCorrect ? 'correct' : 'incorrect');
  }

  void _toggleDialogVisibility() {
    setState(() {
      isDialogShown = !isDialogShown;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(72),
          Text(
            'Identify the animals',
            style: TextStyles.primaryTextBold24,
            textAlign: TextAlign.center,
          ),
          verticalSpace(14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0).w,
            child: Text(
              'Please show the patient the following animals and check their response.',
              style: TextStyles.secondaryTextMedium14,
              textAlign: TextAlign.center,
            ),
          ),
          verticalSpace(32),
          if (!isDialogShown) ...[
            AnimalToggle(
              name: 'Chicken',
              emoji: '🐓',
              onToggled: (isCorrect) {
                _recordAnswer('question5', isCorrect);
              },
              onShowDialog: _toggleDialogVisibility,
            ),
            AnimalToggle(
              name: 'Horse',
              emoji: '🐎',
              onToggled: (isCorrect) {
                _recordAnswer('question6', isCorrect);
              },
              onShowDialog: _toggleDialogVisibility,
            ),
            AnimalToggle(
              name: 'Dog',
              emoji: '🐕',
              onToggled: (isCorrect) {
                _recordAnswer('question7', isCorrect);
              },
              onShowDialog: _toggleDialogVisibility,
            ),
          ],
          if (!isDialogShown)
            Text(
              '$correctAnswersCount correct',
              style: TextStyles.orangeText2ExtraBold14,
            ),
          verticalSpace(30),
        ],
      ),
    );
  }
}
