import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/extensions.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_response.dart';
import 'package:measureapp/features/assesment/logic/assessment_cubit.dart';
import 'package:measureapp/features/assesment/ui/views/assessment_view_1.dart';
import 'package:measureapp/features/assesment/ui/views/assessment_view_2.dart';
import 'package:measureapp/features/assesment/ui/views/assessment_view_3.dart';
import 'package:measureapp/features/assesment/ui/views/assessment_view_4.dart';
import 'package:measureapp/features/assesment/ui/views/assessment_view_5.dart';
import 'package:measureapp/features/assesment/ui/widgets/assessment_app_bar.dart';
import 'package:measureapp/features/assesment/ui/widgets/assessment_bloc_listener.dart';
import 'package:measureapp/features/assesment/ui/widgets/assessment_navigation_buttons.dart';
import 'package:measureapp/features/assesment/ui/widgets/step_indicator.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  PageController pageController = PageController();
  int currentStep = 0;
  CreateAssessmentRequestResponse? assessmentResponse;

  void onContinue() async {
    if (currentStep < 4 && currentStep != 3) {
      setState(() {
        currentStep++;
      });
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else if (currentStep == 3) {
      await context.read<AssessmentCubit>().createAssessment();
    } else {
      null;
    }
  }

  void onBack() {
    if (currentStep > 0 && currentStep < 4) {
      setState(() {
        currentStep--;
      });
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else if (currentStep == 4) {
      context.popUntil((route) => route.isFirst);
    } else {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AssessmentAppBar(
        onPressed: onBack,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22).w,
            child: Column(
              children: [
                verticalSpace(25),
                StepIndicator(currentStep: currentStep),
                Expanded(
                  child: PageView(
                    controller: pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const AssessmentView1(),
                      const AssessmentView2(),
                      const AssessmentView3(),
                      const AssessmentView4(),
                      AssessmentView5(response: assessmentResponse),
                    ],
                  ),
                ),
                verticalSpace(7),
                AssessmentNavigationButtons(
                  currentStep: currentStep,
                  onBackPressed: onBack,
                  onContinuePressed: onContinue,
                ),
                verticalSpace(40),
              ],
            ),
          ),
          AssessmentBlocListener(
            pageController: pageController,
            currentStep: currentStep,
            onResponseReceived: (response) {
              setState(() {
                currentStep++;
                assessmentResponse = response;
              });
            },
          ),
        ],
      ),
    );
  }
}
