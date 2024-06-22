import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/date_helper.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 42.w,
          width: 42.w,
          child: const CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200'),
          ),
        ),
        horizontalSpace(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.secondaryTextMedium12,
              ),
              Text(
                'Dr.Johnson',
                style: TextStyles.primaryTextBold16,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              DateHelper.formatDayName(DateTime.now()),
              style: TextStyles.secondaryTextMedium12,
            ),
            Text(
              DateHelper.formatDateWithMonth(DateTime.now()),
              style: TextStyles.primaryTextBold16,
            ),
          ],
        ),
      ],
    );
  }
}
