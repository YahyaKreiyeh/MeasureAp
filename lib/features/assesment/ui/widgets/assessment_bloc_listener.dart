import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/core/helpers/extensions.dart';
import 'package:measureapp/core/helpers/loading_dialog.dart';
import 'package:measureapp/core/utils/constants/styles.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_response.dart';
import 'package:measureapp/features/assesment/logic/assessment_cubit.dart';
import 'package:measureapp/features/assesment/logic/assessment_state.dart';

class AssessmentBlocListener extends StatelessWidget {
  final PageController pageController;
  final int currentStep;
  final Function(CreateAssessmentRequestResponse) onResponseReceived;

  const AssessmentBlocListener({
    super.key,
    required this.pageController,
    required this.currentStep,
    required this.onResponseReceived,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AssessmentCubit, AssessmentState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            loadingDialog(context);
          },
          success: (assessmentResponse) {
            context.pop();
            onResponseReceived(assessmentResponse);
            if (currentStep < 4) {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            } else {}
          },
          failure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.primaryTextMedium14,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.primaryTextSemiBold18,
            ),
          ),
        ],
      ),
    );
  }
}
