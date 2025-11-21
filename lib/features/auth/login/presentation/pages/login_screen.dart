import 'package:flutter/material.dart';
import 'package:graduation_project/config/routing/app_routes.dart';
import 'package:graduation_project/config/routing/routing_extensions.dart';
import 'package:graduation_project/config/theme/colors.dart';
import 'package:graduation_project/core/components/custom_elevated_button.dart';
import 'package:graduation_project/core/extensions/extensions.dart';
import 'package:graduation_project/core/helpers/validators.dart';
import 'package:graduation_project/features/auth/common/auth_logo.dart';
import 'package:graduation_project/features/auth/common/auth_textfield.dart';
import 'package:graduation_project/features/auth/login/widget/login_type.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var locale=context.localization;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthLogo(
              desc: locale.enter_your_username_and_password_to_login,
              pross: locale.login,
            ),
            SizedBox(height: context.height * 0.05),
            AuthTextField(
              icon: Icons.person,
              label: locale.username,
              validator: (value) => Validations.validateName(context, value),
            ),
            SizedBox(height: context.height * 0.04),
            AuthTextField(
              icon: Icons.key,
              label: locale.password,
              isPassword: true,
              showForgotPassword: true,
              validator: (value) =>
                  Validations.validatePassword(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            CustomElevatedButton(
              onPressed: () {},
              isLoading: false,
              widget: Text(
                locale.login,
                style: context.textTheme.displayMedium!.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(locale.or_login_with, style: context.textTheme.bodyLarge),
            SizedBox(height: context.height * 0.025),
            LoginType(),
            SizedBox(height: context.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  locale.don_t_have_an_account,
                  style: context.textTheme.bodyLarge,
                ),
                InkWell(
                  onTap: () {
                    context.pushNamed(AppRoutes.register);
                  },
                  child: Text(
                    locale.register,
                    style: context.textTheme.displayMedium!.copyWith(
                      color: AppColors.lightProgress,
                      fontSize: 16,
                    ),
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
