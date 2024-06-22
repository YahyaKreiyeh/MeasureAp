import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/core/widgets/buttons/app_outlined_button.dart';

class CheckButton extends StatefulWidget {
  final String title;
  final Function(bool) onChecked;

  const CheckButton({
    super.key,
    required this.title,
    required this.onChecked,
  });

  @override
  CheckButtonState createState() => CheckButtonState();
}

class CheckButtonState extends State<CheckButton> {
  bool done = false;

  void _toggleDone() {
    setState(() {
      done = !done;
    });
    widget.onChecked(done);
  }

  @override
  Widget build(BuildContext context) {
    return AppOutlinedButton(
      onPressed: _toggleDone,
      minimumSize: Size(double.infinity, 77.h),
      color: done ? ColorsManager.orangeBorder : ColorsManager.fieldBorder,
      backgroundColor:
          done ? ColorsManager.white : ColorsManager.scaffoldBackground,
      radius: 13.r,
      child: Row(
        children: [
          Icon(
            done ? Icons.check_circle : Icons.radio_button_unchecked,
            color: done ? ColorsManager.checkMarkOrange : ColorsManager.grey,
            size: 27.r,
          ),
          horizontalSpace(12),
          Expanded(
            child: Text(
              widget.title,
              style: TextStyles.primaryTextBold18,
            ),
          ),
        ],
      ),
    );
  }
}
