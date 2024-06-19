import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class RecentAssessmentsCard extends StatelessWidget {
  const RecentAssessmentsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsManager.white,
      margin: EdgeInsets.symmetric(vertical: 6.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12).r,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12).r,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsManager.assessmentCardOrange,
                  borderRadius: BorderRadius.circular(30).r,
                ),
                padding: const EdgeInsets.all(8).r,
                child: Text.rich(
                  overflow: TextOverflow.ellipsis,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'COGNITION • ',
                        style: TextStyles.orangeTextExtraBold14,
                      ),
                      TextSpan(
                        text: 'SLUMS',
                        style: TextStyles.orangeTextMedium14,
                      )
                    ],
                  ),
                ),
              ),
            ),
            horizontalSpace(24),
            Icon(
              Icons.arrow_circle_right_outlined,
              color: ColorsManager.orangeText,
              size: 20.w,
            ),
          ],
        ),
      ),
    );
  }
}
