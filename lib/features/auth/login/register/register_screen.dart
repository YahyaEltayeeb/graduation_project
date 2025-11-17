import 'package:flutter/material.dart';
import 'package:graduation_project/config/routing/routing_extensions.dart';
import 'package:graduation_project/core/components/custom_elevated_button.dart';
import 'package:graduation_project/core/extensions/extensions.dart';
import 'package:graduation_project/core/helpers/validators.dart';
import 'package:graduation_project/features/auth/common/auth_dropdoen_textfield.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthLogo(desc: 'Enter your details to register', pross: 'Register'),
            SizedBox(height: context.height * 0.05),
            AuthTextField(
              icon: Icons.person,
              label: 'Name',
              validator: (value) => Validations.validateName(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthTextField(
              icon: Icons.email,
              label: 'Email',
              validator: (value) => Validations.validateEmail(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthTextField(
              icon: Icons.key,
              label: 'Password',
              isPassword: true,
              showForgotPassword: false,
              validator: (value) =>
                  Validations.validatePassword(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthTextField(
              icon: Icons.key,
              label: 'Confirm Password',
              isPassword: true,
              showForgotPassword: false,
              validator: (value) =>
                  Validations.validatePassword(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthTextField(
              icon: Icons.mobile_friendly,
              label: 'Mobile Number',
              validator: (value) => Validations.validateEmail(context, value),
            ),
            SizedBox(height: context.height * 0.025),
            AuthDropdoenTextfield(
              icon: Icons.no_encryption,
              label: 'Register As',
              items: ['Student', 'Graduated'],
              showForgotPassword: false,
              forgotText: '',
            ),
            SizedBox(height: context.height * 0.04),
            CustomElevatedButton(
              onPressed: () {
                context.pushNamed('/stuRegister');
              },
              isLoading: false,
              widget: Text(
                'Next',
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
