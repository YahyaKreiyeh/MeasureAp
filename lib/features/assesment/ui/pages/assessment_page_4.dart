import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/assesment/ui/widgets/animal_toggle.dart';

class AssessmentPage4 extends StatelessWidget {
  const AssessmentPage4({
    super.key,
  });

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
          const AnimalToggle(
            name: 'Chicken',
            emoji: '🐓',
          ),
          const AnimalToggle(
            name: 'Horse',
            emoji: '🐎',
          ),
          const AnimalToggle(
            name: 'Dog',
            emoji: '🐕',
          ),
          Text(
            '1 correct',
            style: TextStyles.orangeText2ExtraBold14,
          ),
          verticalSpace(30),
        ],
      ),
    );
  }
}
