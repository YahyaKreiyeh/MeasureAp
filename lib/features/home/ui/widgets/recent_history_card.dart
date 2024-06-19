import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/date_helper.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorsManager.historyCardBlue,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    padding: const EdgeInsets.all(8).r,
                    child: Text.rich(
                      overflow: TextOverflow.ellipsis,
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Z00.00 • ',
                            style: TextStyles.blueTextExtraBold14,
                          ),
                          TextSpan(
                            text: 'Physical Examination',
                            style: TextStyles.blueTextMedium14,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                horizontalSpace(24),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: ColorsManager.blueText,
                  size: 20.w,
                ),
              ],
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
