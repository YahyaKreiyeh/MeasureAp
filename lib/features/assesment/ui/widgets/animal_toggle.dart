import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class AnimalToggle extends StatelessWidget {
  final String name;
  final String emoji;
  final bool isSelected;
  final Function(bool) onToggled;
  final VoidCallback onShowDialog;

  const AnimalToggle({
    super.key,
    required this.name,
    required this.emoji,
    required this.isSelected,
    required this.onToggled,
    required this.onShowDialog,
  });

  void _showEmojiDialog(BuildContext context, String emoji) {
    onShowDialog();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(300.r),
          ),
          elevation: 0,
          backgroundColor: ColorsManager.scaffoldBackground,
          child: Container(
            width: 300.w,
            height: 300.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300.r),
              border: Border.all(
                color: ColorsManager.fieldBorder,
                width: 5,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: ColorsManager.scaffoldBackground,
              child: Text(
                emoji,
                style: TextStyle(fontSize: 135.sp),
              ),
            ),
          ),
        );
      },
    ).then((_) {
      onShowDialog();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: ColorsManager.fieldBorder,
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16).h,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  _showEmojiDialog(context, emoji);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70.r),
                    border: Border.all(
                      color: ColorsManager.fieldBorder,
                    ),
                  ),
                  child: SizedBox(
                    height: 67.w,
                    width: 67.w,
                    child: CircleAvatar(
                      backgroundColor: ColorsManager.scaffoldBackground,
                      child: Text(
                        emoji,
                        style: TextStyle(fontSize: 24.sp),
                      ),
                    ),
                  ),
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: Text(
                  name,
                  style: TextStyles.primaryTextBold16,
                ),
              ),
              Switch.adaptive(
                value: isSelected,
                onChanged: onToggled,
                activeColor: ColorsManager.checkMarkOrange,
                inactiveTrackColor: ColorsManager.toggleGrey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
