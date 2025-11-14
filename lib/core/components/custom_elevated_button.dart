import 'package:flutter/material.dart';
import 'package:graduation_project/core/extensions/extensions.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.isLoading,
    required this.widget,
    this.loadingColor,
    this.textColor,
    this.containerColor,
  });

  final void Function() onPressed;
  final bool isLoading;
  final Widget widget;
  final Color? textColor;
  final Color? loadingColor;
  final Color? containerColor;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(context.height * 0.1);
    final buttonWidth = isLoading ? context.width * 0.4 : MediaQuery.of(context).size.width;

    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        height: context.height * 0.046,
        width: buttonWidth,
        child: isLoading
            ? Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: containerColor ?? context.colorScheme.primary,
                  borderRadius: borderRadius,
                ),
                child: SizedBox(
                  width: context.width * 0.08,
                  height: context.height * 0.03,
                  child: Theme(
                    data: ThemeData(
                      progressIndicatorTheme: ProgressIndicatorThemeData(
                        color: loadingColor ?? context.colorScheme.onPrimary,
                      ),
                    ),
                    child: const CircularProgressIndicator(strokeWidth: 2.5),
                  ),
                ),
              )
            : ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: containerColor ?? context.colorScheme.primary,
                  shape: RoundedRectangleBorder(borderRadius: borderRadius),
                ),
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: textColor ?? context.colorScheme.onPrimary,
                  ),
                  child: widget,
                ),
              ),
      ),
    );
  }
}
