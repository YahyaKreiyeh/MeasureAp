import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/assesment/logic/expandable_text_cubit.dart';
import 'package:measureapp/features/assesment/ui/widgets/check_button.dart';
import 'package:measureapp/features/assesment/ui/widgets/expandapble_text.dart';

class AssessmentView2 extends StatelessWidget {
  const AssessmentView2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ExpandableTextCubit(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(61),
            Text(
              'Story ”Jill went to the shop”',
              style: TextStyles.primaryTextBold24,
              textAlign: TextAlign.center,
            ),
            verticalSpace(14),
            const ExpandableText(),
            verticalSpace(32),
            const CheckButton(
              title: "Jill bought candies.",
            ),
            verticalSpace(13),
            const CheckButton(
              title: "Jill has a dog as a pet.",
            ),
            verticalSpace(13),
            const CheckButton(
              title: "Jill took a cab.",
            ),
          ],
        ),
      ),
    );
  }
}
