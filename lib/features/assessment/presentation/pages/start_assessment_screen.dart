import 'package:flutter/material.dart';
import 'package:graduation_project/config/theme/colors.dart';
import 'package:graduation_project/core/components/custom_elevated_button.dart';
import 'package:graduation_project/core/extensions/extensions.dart';
import 'package:graduation_project/core/helpers/spacing.dart';

class StartAssessmentScreen extends StatelessWidget {
  const StartAssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var color = context.colorScheme;
    var theme = context.theme.textTheme;
    var locale = context.localization;
    return Scaffold(
      backgroundColor: color.primary,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: color.primary,
              child: Center(
                child: Text(
                  locale.assessment,
                  style: theme.displayLarge!.copyWith(
                    color: AppColors.white,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: color.surface,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpace(60),
                  Text(
                    locale.are_you_ready_to_take,
                    style: theme.displaySmall!.copyWith(fontSize: 24),
                  ),
                  Text(
                    locale.the_test_and_determine,
                    style: theme.displaySmall!.copyWith(fontSize: 24),
                  ),
                  Text(
                    locale.your_level,
                    style: theme.displaySmall!.copyWith(fontSize: 24),
                  ),
                  Spacer(),
                  Flexible(child: Icon(Icons.info_outline, size: 50)),
                  _textInfoStyle(
                    context,
                    locale.this_exam_is_monitored_automatically_any_detected,
                  ),
                  _textInfoStyle(
                    context,
                    locale.cheating_may_result_in_your_session_being_canceled,
                  ),
                  _textInfoStyle(
                    context,
                    locale.and_disciplinary_action_being_taken_if_you_encounter,
                  ),
                  _textInfoStyle(
                    context,
                    locale.technical_problem_report_it_to_support_immediately,
                  ),
                  verticalSpace(30),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CustomElevatedButton(
                      onPressed: () {},
                      isLoading: false,
                      widget: Text(
                        locale.start,
                        style: theme.titleLarge!.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _textInfoStyle(BuildContext context, String text) {
  var theme = context.theme.textTheme;
  return Text(
    text,
    style: theme.headlineSmall!.copyWith(fontSize: 12),
    textAlign: TextAlign.center,
  );
}
