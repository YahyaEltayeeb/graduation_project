import 'package:flutter/material.dart';
import 'package:graduation_project/core/extensions/extensions.dart';
import 'package:graduation_project/core/helpers/spacing.dart';
import 'package:graduation_project/features/app_section/widget/all_action_widget.dart';
import 'package:graduation_project/features/app_section/widget/custom_info_widget.dart';
import 'package:graduation_project/features/app_section/widget/custom_setting_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          width: context.width * .75,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                verticalSpace(15),
                CustomInfoWidget(),
                CustomAllActionWidget(),
                CustomSettingWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
