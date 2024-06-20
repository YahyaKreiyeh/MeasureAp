import 'package:flutter/material.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class AssessmentView3 extends StatelessWidget {
  const AssessmentView3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(61),
          Text(
            'Recall question:',
            style: TextStyles.secondaryTextMedium14,
            textAlign: TextAlign.center,
          ),
          verticalSpace(14),
          Text(
            'Read the sentences',
            style: TextStyles.primaryTextBold24,
            textAlign: TextAlign.center,
          ),
          verticalSpace(25),
          Text(
            'Proin ultrices fringilla et scelerisque sed duis massa nulla. Eget arcu urna ipsum in neque ornare. Integer placerat rhoncus purus est ut ultrices. Pharetra amet faucibus tincidunt mattis in enim. Duis pharetra integer adipiscing quisque elementum lacus porta. Sit diam aliquam quisque purus tortor.\n\nUt turpis consectetur massa libero. Habitant lobortis dictum pretium et tortor facilisi in enim porttitor. Purus porta pulvinar sit ultrices aliquam ultrices lacus quam. Gravida etiam facilisis enim purus ornare quis donec leo dignissim. Etiam at non aliquam quis.\n\nPellentesque pellentesque at amet vitae turpis hac in. Felis eu purus vel interdum accumsan lorem dictu.',
            style: TextStyles.secondaryTextMedium14,
          ),
          verticalSpace(50),
        ],
      ),
    );
  }
}
