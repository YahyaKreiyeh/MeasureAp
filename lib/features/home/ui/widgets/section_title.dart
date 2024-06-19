import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Recent history',
            style: TextStyles.primaryTextBold18,
          ),
        ),
        Row(
          children: [
            Text(
              'see more ',
              style: TextStyles.secondaryTextBold12,
            ),
            Icon(
              Icons.arrow_forward,
              color: ColorsManager.secondaryText,
              size: 14.r,
            ),
          ],
        )
      ],
    );
  }
}
