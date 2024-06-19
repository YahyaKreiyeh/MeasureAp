import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/assesment/logic/expandable_text_cubit.dart';
import 'package:measureapp/features/assesment/logic/expandable_text_state.dart';

class ExpandableText extends StatelessWidget {
  const ExpandableText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ExpandableTextCubit>().toggleExpand();
      },
      child: BlocBuilder<ExpandableTextCubit, ExpandableTextState>(
        builder: (context, state) {
          final isExpanded = state is ExpandedState;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.0).w,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: isExpanded
                        ? 'Jill went to the shop to buy candies. Afterwards instead of walking home, she took a cab. When she arrived home, she found her cat waiting at the door. She fed her cat and then sat down to enjoy her candies while watching her favorite TV show. Later, she called her friend to share the news about her day.'
                        : 'Jill went to the shop to buy candies. Afterwards instead of walking home, she took a cab. When she arrived home, s...',
                    style: TextStyles.secondaryTextMedium14,
                  ),
                  if (!isExpanded)
                    TextSpan(
                      text: ' show more',
                      style: TextStyles.orangeText2ExtraBold14,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
