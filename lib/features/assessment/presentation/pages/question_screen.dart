import 'package:flutter/material.dart';
import 'package:graduation_project/config/theme/colors.dart';
import 'package:graduation_project/core/components/custom_elevated_button.dart';
import 'package:graduation_project/core/extensions/extensions.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/features/assessment/presentation/widget/custom_card_answer.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final PageController _pageController = PageController();
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = context.textTheme;
    var color = context.colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text('Question 1')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Question 1 of 10',
              style: theme.titleMedium!.copyWith(color: AppColors.grey),
            ),

            LinearProgressIndicator(
              borderRadius: BorderRadius.circular(10),
              semanticsLabel: 'Linear progress indicator',
              semanticsValue: '65%',
              value: 0.65,
              minHeight: 6,
              backgroundColor: AppColors.grey,
              color: AppColors.darkPrimary,
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(
                        'Question ${index + 1}',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      CustomCardAnswer(),
                      CustomCardAnswer(),
                      CustomCardAnswer(),
                      CustomCardAnswer(),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color.surface,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      if (_pageController.page! > 0) {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text('Previous', style: theme.headlineMedium),
                  ),
                ),
                horizontalSpace(10),
                Expanded(
                  child: CustomElevatedButton(
                    isLoading: false,
                    onPressed: () {
                      if (_pageController.page! < 9) {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    widget: Text('Next', style: theme.headlineMedium),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
