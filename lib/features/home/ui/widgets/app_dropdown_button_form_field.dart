import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class AppDropdownButtonFormField extends StatelessWidget {
  final String? value;
  final String hint;
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  const AppDropdownButtonFormField({
    super.key,
    this.value,
    required this.items,
    required this.onChanged,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.white,
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
        onChanged: onChanged,
        style: TextStyles.primaryTextMedium16,
        icon: Transform.rotate(
          angle: 90 * 3.14159 / 180,
          child: Icon(
            Icons.arrow_forward_ios,
            color: ColorsManager.secondaryText,
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
    );
  }
}
