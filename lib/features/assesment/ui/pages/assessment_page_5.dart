import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class AssessmentPage5 extends StatelessWidget {
  const AssessmentPage5({
    super.key,
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
                    height: 150,
                    width: 150,
                    child: Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 135.r,
                            width: 135.r,
                            child: CircularProgressIndicator(
                              value: 12 / 18,
                              strokeWidth: 8,
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
                                '12',
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
                  verticalSpace(16),
                  const Divider(
                    height: 0,
                    color: ColorsManager.fieldBorder,
                  ),
                  verticalSpace(16),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Question 1',
                            style: TextStyles.primaryTextMedium14,
                          ),
                          Text(
                            'Correct',
                            style: TextStyles.successGreenBold14,
                          ),
                        ],
                      ),
                      verticalSpace(16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Question 2',
                            style: TextStyles.primaryTextMedium14,
                          ),
                          Text(
                            'Incorrect',
                            style: TextStyles.failRedBold14,
                          ),
                        ],
                      ),
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
}
