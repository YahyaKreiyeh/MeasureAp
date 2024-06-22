import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/routing/routes.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/home/ui/widgets/card_header.dart';

class RecentAssessmentsCard extends StatelessWidget {
  final String cognitiveStatus;
  final String applicableMeasures;

  const RecentAssessmentsCard({
    super.key,
    required this.cognitiveStatus,
    required this.applicableMeasures,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.newAssessmentScreen,
          arguments: {
            'cognitiveStatus': cognitiveStatus,
            'applicableMeasures': applicableMeasures,
          },
        );
      },
      child: Card(
        color: ColorsManager.white,
        margin: EdgeInsets.symmetric(vertical: 6.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12).r,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12).r,
          child: CardHeader(
            backgroundColor: ColorsManager.assessmentCardOrange,
            cognitiveStatusText: cognitiveStatus,
            cognitiveStatusTextStyle: TextStyles.orangeTextExtraBold14,
            applicableMeasuresText: applicableMeasures,
            applicableMeasuresTextStyle: TextStyles.orangeTextMedium14,
            iconColor: ColorsManager.orangeText,
          ),
        ),
      ),
    );
  }
}
