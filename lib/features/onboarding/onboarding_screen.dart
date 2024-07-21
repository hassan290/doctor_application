import 'package:doctor_flutter_app/core/helpers/extensions.dart';
import 'package:doctor_flutter_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_flutter_app/features/onboarding/widgets/doctor_logo.dart';
import 'package:doctor_flutter_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/routing/routes.dart';
import '../../core/theming/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DoctorLogo(),
                SizedBox(height: 40.h),
                const DoctorImageAndText(),
                SizedBox(height: 18.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily\nwith Docdoc to get a new experience.',
                        style: TextStyles.font10Gray400Wight,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 32.h),
                      SubmitButton(
                        text: 'Get Started',
                        onPressed: () {
                          context.pushNamed(Routes.login);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
