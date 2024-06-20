import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class AppDropdownButtonFormField extends StatelessWidget {
  final String label;
  final String? value;
  final String hint;
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  final bool enabled;

  const AppDropdownButtonFormField({
    super.key,
    this.value,
    required this.items,
    required this.onChanged,
    required this.hint,
    this.enabled = true,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.secondaryTextBold14,
        ),
        verticalSpace(4),
        Container(
          decoration: BoxDecoration(
            color: enabled
                ? ColorsManager.white
                : ColorsManager.disabledFieldBackground,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: ColorsManager.fieldBorder,
            ),
          ),
          child: DropdownButtonFormField<String>(
            isExpanded: true,
            hint: Text(hint),
            value: value,
            items: items,
            onChanged: enabled ? onChanged : null,
            style: enabled
                ? TextStyles.primaryTextMedium16
                : TextStyles.secondaryTextMedium16,
            icon: Transform.rotate(
              angle: 90 * 3.14159 / 180,
              child: Icon(
                Icons.arrow_forward_ios,
                color: ColorsManager.grey,
                size: 20.r,
              ),
            ),
            decoration: InputDecoration(
              hintStyle: TextStyles.secondaryTextMedium16,
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 17.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
