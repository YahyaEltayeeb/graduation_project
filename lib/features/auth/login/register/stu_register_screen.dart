import 'package:flutter/material.dart';
import 'package:graduation_project/core/components/custom_elevated_button.dart';
import 'package:graduation_project/core/extensions/extensions.dart';
import 'package:graduation_project/features/auth/common/auth_dropdoen_textfield.dart';
import 'package:graduation_project/features/auth/common/auth_logo.dart';

class StuRegisterScreen extends StatefulWidget {
  const StuRegisterScreen({super.key});

  @override
  State<StuRegisterScreen> createState() => _StuRegisterScreenState();
}

class _StuRegisterScreenState extends State<StuRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthLogo(desc: 'Enter your details to register', pross: 'Register'),
            SizedBox(height: context.height * 0.05),
            AuthDropdoenTextfield(
              icon: Icons.abc,
              label: 'Student',
              items: [''],
              showForgotPassword: false,
              forgotText: '',
            ),
            SizedBox(height: context.height * 0.025),
              AuthDropdoenTextfield(
              icon: Icons.cast_for_education,
              label: 'Collage',
              items: [''],
              showForgotPassword: false,
              forgotText: '',
            ),
            SizedBox(height: context.height * 0.025),  AuthDropdoenTextfield(
              icon: Icons.book,
              label: 'Department',
              items: [''],
              showForgotPassword: false,
              forgotText: '',
            ),
            SizedBox(height: context.height * 0.025),
            AuthDropdoenTextfield(
              icon: Icons.now_widgets,
              label: 'Current Year',
              items: [''],
              showForgotPassword: false,
              forgotText: '',
            ),
            SizedBox(height: context.height * 0.025),
            AuthDropdoenTextfield(
              icon: Icons.no_encryption,
              label: 'Semester',
              items: [''],
              showForgotPassword: false,
              forgotText: '',
            ),
            SizedBox(height: context.height * 0.025),
            AuthDropdoenTextfield(
              icon: Icons.toll_rounded,
              label: 'Track',
              items: [''],
              showForgotPassword: false,
              forgotText: '',
            ),
            SizedBox(height: context.height * 0.04),
            CustomElevatedButton(
              onPressed: () {},
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
