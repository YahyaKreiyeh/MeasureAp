import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/extensions.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/routing/routes.dart';
import 'package:measureapp/core/widgets/buttons/app_elevated_button.dart';
import 'package:measureapp/core/widgets/loading.dart';
import 'package:measureapp/features/home/logic/new_assessment_cubit.dart';
import 'package:measureapp/features/home/logic/new_assessment_state.dart';
import 'package:measureapp/features/home/ui/widgets/app_autocomplete_form_field.dart';
import 'package:measureapp/features/home/ui/widgets/app_dropdown_button_form_field.dart';

class NewAssessmentScreen extends StatelessWidget {
  const NewAssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAssessmentCubit, NewAssessmentState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('New assessment'),
            automaticallyImplyLeading: !state.isLoading,
          ),
          body: SafeArea(
            child: state.isLoading
                ? const Loading()
                : buildInitialForm(context, state),
          ),
          floatingActionButton: state.isLoading
              ? const SizedBox.shrink()
              : SizedBox(
                  width: 0.9.sw,
                  child: AppElevatedButton(
                    text: 'Start assessment',
                    onPressed: state.isButtonEnabled
                        ? () async {
                            context.read<NewAssessmentCubit>().startLoading();
                            await Future.delayed(
                              const Duration(seconds: 4),
                            );
                            if (context.mounted) {
                              context.read<NewAssessmentCubit>().stopLoading();
                              context.pushNamed(Routes.assessmentScreen);
                            }
                          }
                        : null,
                  ),
                ),
        );
      },
    );
  }

  Widget buildInitialForm(BuildContext context, NewAssessmentState state) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(30),
            AppDropdownButtonFormField(
              label: 'Cognitive status',
              hint: 'Select cognitive status',
              items: const [
                DropdownMenuItem(
                  value: 'Cognition',
                  child: Text('Cognition'),
                ),
                DropdownMenuItem(
                  value: 'Unconscious',
                  child: Text('Unconscious'),
                ),
              ],
              onChanged: (value) {
                context
                    .read<NewAssessmentCubit>()
                    .selectFirstDropdownItem(value!);
              },
            ),
            verticalSpace(30),
            AppDropdownButtonFormField(
              label: 'Applicable measures',
              hint: 'Select applicable measures',
              items: const [
                DropdownMenuItem(
                  value: 'SLUMS',
                  child: Text('SLUMS'),
                ),
                DropdownMenuItem(
                  value: 'CPR',
                  child: Text('CPR'),
                ),
                DropdownMenuItem(
                  value: 'MMSE',
                  child: Text('MMSE'),
                ),
              ],
              onChanged: (value) {
                context
                    .read<NewAssessmentCubit>()
                    .selectSecondDropdownItem(value!);
              },
              enabled: state.isSecondDropdownEnabled,
            ),
            verticalSpace(30),
            AppAutocompleteFormField(
              label: 'Patient',
              hint: 'Enter patient name or ID',
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
              onChanged: (value) {
                context
                    .read<NewAssessmentCubit>()
                    .selectAutocompleteItem(value!);
              },
              enabled: state.isAutocompleteEnabled,
            ),
          ],
        ),
      ),
    );
  }
}
