import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';

class CardHeader extends StatelessWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  final String cognitiveStatusText;
  final TextStyle? cognitiveStatusTextStyle;
  final String applicableMeasuresText;
  final TextStyle? applicableMeasuresTextStyle;
  const CardHeader({
    super.key,
    required this.backgroundColor,
    required this.cognitiveStatusText,
    required this.cognitiveStatusTextStyle,
    required this.applicableMeasuresText,
    required this.applicableMeasuresTextStyle,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(30.r),
            ),
            padding: const EdgeInsets.all(8).r,
            child: Text.rich(
              overflow: TextOverflow.ellipsis,
              TextSpan(
                children: [
                  TextSpan(
                    text: '$cognitiveStatusText • ',
                    style: cognitiveStatusTextStyle,
                  ),
                  TextSpan(
                    text: applicableMeasuresText,
                    style: applicableMeasuresTextStyle,
                  )
                ],
              ),
            ),
          ),
        ),
        horizontalSpace(24),
        Icon(
          Icons.arrow_circle_right_outlined,
          color: iconColor,
          size: 20.r,
        ),
      ],
    );
  }
}
