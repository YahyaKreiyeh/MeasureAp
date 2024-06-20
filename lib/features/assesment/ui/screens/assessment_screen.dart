import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/extensions.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/features/assesment/ui/pages/assessment_page_1.dart';
import 'package:measureapp/features/assesment/ui/pages/assessment_page_2.dart';
import 'package:measureapp/features/assesment/ui/pages/assessment_page_3.dart';
import 'package:measureapp/features/assesment/ui/pages/assessment_page_4.dart';
import 'package:measureapp/features/assesment/ui/pages/assessment_page_5.dart';
import 'package:measureapp/features/assesment/ui/widgets/assessment_app_bar.dart';
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

  void onContinue() {
    if (currentStep < 4) {
      setState(() {
        currentStep++;
      });
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      setState(() {
        currentStep = 0;
      });
      // pageController.animateToPage(
      //   0,
      //   duration: const Duration(milliseconds: 300),
      //   curve: Curves.ease,
      // );
      context.popUntil((route) => route.isFirst);
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22).w,
        child: Column(
          children: [
            verticalSpace(25),
            StepIndicator(currentStep: currentStep),
            Expanded(
              child: PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  AssessmentPage1(),
                  AssessmentPage2(),
                  AssessmentPage3(),
                  AssessmentPage4(),
                  AssessmentPage5(),
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
    );
  }
}
