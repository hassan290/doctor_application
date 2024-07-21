import 'package:doctor_flutter_app/core/theming/colors.dart';
import 'package:doctor_flutter_app/core/theming/text_strings.dart';
import 'package:doctor_flutter_app/core/widgets/spacer.dart';
import 'package:doctor_flutter_app/features/login/ui/widgets/remember_and_forgot_password.dart';
import 'package:doctor_flutter_app/features/login/ui/widgets/signin_tools.dart';
import 'package:doctor_flutter_app/features/login/ui/widgets/signin_with_divider.dart';
import 'package:doctor_flutter_app/features/login/ui/widgets/terms_and_privacy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';
import '../../../../core/validators/validators.dart';
import '../../../../core/widgets/text_form_field.dart';
import '../../../onboarding/widgets/get_started_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 31.w, top: 50.h, right: 31.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24Blue700Wight,
                ),
                SpacerWidget.vertical(8.h),
                Text(
                  TextStrings.welcomeMessage,
                  style: TextStyles.font14Gray400Wight,
                ),
                SpacerWidget.vertical(36.h),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const TextFormFieldWidget(
                        hintText: 'Email',
                        validator: AppValidator.validateEmail,
                      ),
                      SpacerWidget.vertical(16.h),
                      TextFormFieldWidget(
                        hintText: 'Password',
                        validator: AppValidator.validatePassword,
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(isObscureText
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined),
                        ),
                      ),
                      SpacerWidget.vertical(16.h),
                      const RememberAndForgotPasswordWidget(),
                      SpacerWidget.vertical(32.h),
                      SubmitButton(
                        text: 'Login',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            print('Every thing is ok');
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SpacerWidget.vertical(54.h),
                const SignInDividerWidget(),
                SpacerWidget.vertical(32.h),
                const SignInToolsWidget(),
                SpacerWidget.vertical(32.h),
                const TermsAndPrivacyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
