import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/loading.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/features/home/ui/widgets/app_dropdown_button_form_field.dart';
import 'package:measureapp/features/home/ui/widgets/app_floating_action_button.dart';

class NewAssessmentScreen extends StatelessWidget {
  const NewAssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New assessment'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(30),
                const Text('Cognitive status'),
                verticalSpace(4),
                AppDropdownButtonFormField(
                  hint: 'Select cognitive status',
                  items: const [
                    DropdownMenuItem(
                      value: 'Cognition',
                      child: Text('Cognition'),
                    ),
                    DropdownMenuItem(
                      value: 'Cognition1',
                      child: Text('Cognition1'),
                    ),
                    DropdownMenuItem(
                      value: 'Cognition2',
                      child: Text('Cognition2'),
                    ),
                  ],
                  onChanged: (value) {},
                ),
                verticalSpace(30),
                const Text('Applicable measures'),
                verticalSpace(4),
                AppDropdownButtonFormField(
                  hint: 'Select applicable measures',
                  items: const [
                    DropdownMenuItem(
                      value: 'SLUMS',
                      child: Text('SLUMS'),
                    ),
                    DropdownMenuItem(
                      value: 'SLUMS1',
                      child: Text('SLUMS1'),
                    ),
                    DropdownMenuItem(
                      value: 'SLUMS2',
                      child: Text('SLUMS2'),
                    ),
                  ],
                  onChanged: (value) {},
                ),
                verticalSpace(30),
                const Text('Patient'),
                verticalSpace(4),
                AppDropdownButtonFormField(
                  hint: 'Select applicable measures',
                  items: const [
                    DropdownMenuItem(
                      value: 'SLUMS',
                      child: Text('SLUMS'),
                    ),
                    DropdownMenuItem(
                      value: 'SLUMS1',
                      child: Text('SLUMS1'),
                    ),
                    DropdownMenuItem(
                      value: 'SLUMS2',
                      child: Text('SLUMS2'),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: AppFloatingActionButton(
        text: 'Start assessment',
        onPressed: () async {
          loading(context);
          Future.delayed(const Duration(seconds: 5));
        },
      ),
    );
  }
}
