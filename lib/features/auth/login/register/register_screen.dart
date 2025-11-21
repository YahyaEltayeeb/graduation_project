import 'package:flutter/material.dart';
import 'package:graduation_project/config/routing/app_routes.dart';
import 'package:graduation_project/config/routing/routing_extensions.dart';
import 'package:graduation_project/core/components/custom_elevated_button.dart';
import 'package:graduation_project/core/extensions/extensions.dart';
import 'package:graduation_project/core/helpers/validators.dart';
import 'package:graduation_project/features/auth/common/auth_dropdown_textfield.dart';
import 'package:graduation_project/features/auth/common/auth_logo.dart';
import 'package:graduation_project/features/auth/common/auth_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var locale = context.localization;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthLogo(
              desc: locale.enter_your_details_to_register,
              pross: locale.register,
            ),
            SizedBox(height: context.height * 0.05),
            AuthTextField(
              icon: Icons.person,
              label: locale.name,
              validator: (value) => Validations.validateName(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthTextField(
              icon: Icons.email,
              label: locale.email,
              validator: (value) => Validations.validateEmail(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthTextField(
              icon: Icons.key,
              label: locale.password,
              isPassword: true,
              showForgotPassword: false,
              validator: (value) =>
                  Validations.validatePassword(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthTextField(
              icon: Icons.key,
              label: locale.confirm_password,
              isPassword: true,
              showForgotPassword: false,
              validator: (value) =>
                  Validations.validatePassword(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthTextField(
              icon: Icons.mobile_friendly,
              label: locale.mobile_number,
              validator: (value) => Validations.validateEmail(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthDropdownTextfield(
              icon: Icons.no_encryption,
              label: locale.register_as,
              items: ['Student', 'Graduated'],
              showForgotPassword: false,
              forgotText: '',
            ),
            SizedBox(height: context.height * 0.04),
            CustomElevatedButton(
              onPressed: () {
                context.pushNamed(AppRoutes.stuRegister);
              },
              isLoading: false,
              widget: Text(
                locale.next,
                style: context.textTheme.displayMedium!.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
