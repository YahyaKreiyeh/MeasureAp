import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_response.dart';

class AssessmentView5 extends StatelessWidget {
  final CreateAssessmentRequestResponse? response;

  const AssessmentView5({
    super.key,
    required this.response,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            verticalSpace(72),
            Text(
              'Confirm the results',
              style: TextStyles.primaryTextBold24,
              textAlign: TextAlign.center,
            ),
            verticalSpace(16),
            Container(
              padding: const EdgeInsets.all(16.0).r,
              decoration: BoxDecoration(
                color: ColorsManager.white,
                borderRadius: BorderRadius.circular(15).r,
                border: Border.all(
                  color: ColorsManager.fieldBorder,
                ),
              ),
              child: Column(
                children: [
                  verticalSpace(16),
                  SizedBox(
                    height: 135.w,
                    width: 135.w,
                    child: Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 135.r,
                            width: 135.r,
                            child: CircularProgressIndicator(
                              value: response != null
                                  ? (response!.assessment.result.toDouble() /
                                      18)
                                  : 0.0,
                              strokeWidth: 15.r,
                              valueColor: const AlwaysStoppedAnimation(
                                ColorsManager.teal,
                              ),
                              backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                response != null
                                    ? response!.assessment.result.toString()
                                    : '0',
                                style: TextStyles.primaryTextBold36,
                              ),
                              Text(
                                '/18',
                                style: TextStyles.secondaryTextRegular12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(32),
                  const Divider(
                    height: 0,
                    color: ColorsManager.fieldBorder,
                  ),
                  verticalSpace(16),
                  Column(
                    children: [
                      buildQuestionResult(
                          'Question 1', response?.assessment.question1),
                      verticalSpace(16),
                      buildQuestionResult(
                          'Question 2', response?.assessment.question2),
                      verticalSpace(16),
                      buildQuestionResult(
                          'Question 3', response?.assessment.question3),
                      verticalSpace(16),
                      buildQuestionResult(
                          'Question 4', response?.assessment.question4),
                      verticalSpace(16),
                      buildQuestionResult(
                          'Question 5', response?.assessment.question5),
                      verticalSpace(16),
                      buildQuestionResult(
                          'Question 6', response?.assessment.question6),
                      verticalSpace(16),
                      buildQuestionResult(
                          'Question 7', response?.assessment.question7),
                      verticalSpace(16),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQuestionResult(String question, String? result) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          question,
          style: TextStyles.primaryTextMedium14,
        ),
        Text(
          result == 'correct' ? 'Correct' : 'Incorrect',
          style: result == 'correct'
              ? TextStyles.successGreenBold14
              : TextStyles.failRedBold14,
        ),
      ],
    );
  }
}
