import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/extensions.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/routing/routes.dart';
import 'package:measureapp/features/home/ui/widgets/app_floating_action_button.dart';
import 'package:measureapp/features/home/ui/widgets/home_header.dart';
import 'package:measureapp/features/home/ui/widgets/recent_assessments_card.dart';
import 'package:measureapp/features/home/ui/widgets/recent_history_card.dart';
import 'package:measureapp/features/home/ui/widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  verticalSpace(25),
                  const HomeHeader(),
                  verticalSpace(38),
                  const SectionTitle(),
                  verticalSpace(6),
                  const RecentHistoryCard(),
                  verticalSpace(38),
                  const SectionTitle(),
                  verticalSpace(6),
                  const RecentAssessmentsCard(),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: AppFloatingActionButton(
        text: '+ New assessment',
        onPressed: () => context.pushNamed(Routes.assessmentScreen),
      ),
    );
  }
}