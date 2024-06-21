import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/helpers/spacing.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class AppAutocompleteFormField extends StatelessWidget {
  final String label;
  final String? value;
  final String hint;
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  final bool enabled;

  const AppAutocompleteFormField({
    super.key,
    this.value,
    required this.items,
    required this.onChanged,
    required this.hint,
    this.enabled = true,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      'Apple',
      'Banana',
      'Cherry',
      'Date',
      'Elderberry',
      'Fig',
      'Grape',
      'Honeydew',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.secondaryTextBold14,
        ),
        verticalSpace(4),
        Container(
          decoration: BoxDecoration(
            color: enabled
                ? ColorsManager.white
                : ColorsManager.disabledFieldBackground,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: ColorsManager.fieldBorder,
            ),
          ),
          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text.isEmpty) {
                return const Iterable<String>.empty();
              }
              return options.where((String option) {
                return option.toLowerCase().contains(
                      textEditingValue.text.toLowerCase(),
                    );
              });
            },
            onSelected: (String selection) {
              debugPrint('You just selected $selection');
            },
            fieldViewBuilder: (BuildContext context,
                TextEditingController textEditingController,
                FocusNode focusNode,
                VoidCallback onFieldSubmitted) {
              return TextField(
                style: enabled
                    ? TextStyles.primaryTextMedium16
                    : TextStyles.secondaryTextMedium16,
                controller: textEditingController,
                focusNode: focusNode,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: TextStyles.secondaryTextMedium16,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 17.h,
                  ),
                ),
              );
            },
            optionsViewBuilder: (BuildContext context,
                AutocompleteOnSelected<String> onSelected,
                Iterable<String> options) {
              return Align(
                alignment: Alignment.topLeft,
                child: Material(
                  elevation: 4.0,
                  child: SizedBox(
                    width: 300.0,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8.0),
                      itemCount: options.length,
                      itemBuilder: (BuildContext context, int index) {
                        final String option = options.elementAt(index);
                        return GestureDetector(
                          onTap: () {
                            onSelected(option);
                          },
                          child: ListTile(
                            title: Text(option),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
