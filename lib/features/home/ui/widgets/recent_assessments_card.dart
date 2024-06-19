import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/home/ui/widgets/card_header.dart';

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
        child: CardHeader(
          backgroundColor: ColorsManager.assessmentCardOrange,
          cognitiveStatusText: 'COGNITION',
          cognitiveStatusTextStyle: TextStyles.orangeTextExtraBold14,
          applicableMeasuresText: 'SLUMS',
          applicableMeasuresTextStyle: TextStyles.orangeTextMedium14,
          iconColor: ColorsManager.orangeText,
        ),
      ),
    );
  }
}
