import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/date_helper.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/home/ui/widgets/card_header.dart';

class RecentHistoryCard extends StatelessWidget {
  const RecentHistoryCard({
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardHeader(
              backgroundColor: ColorsManager.historyCardBlue,
              cognitiveStatusText: 'Z00.00',
              cognitiveStatusTextStyle: TextStyles.blueTextExtraBold14,
              applicableMeasuresText: 'Physical Examination',
              applicableMeasuresTextStyle: TextStyles.blueTextMedium14,
              iconColor: ColorsManager.blueText,
            ),
            verticalSpace(28),
            Text(
              'Emerson Calzoni',
              style: TextStyles.primaryTextSemiBold18,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Male • 36 Years old • 84 kg',
                    style: TextStyles.secondaryTextBold14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  DateHelper.formatDateNumbers(DateTime.now()),
                  style: TextStyles.secondaryTextBold14,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
