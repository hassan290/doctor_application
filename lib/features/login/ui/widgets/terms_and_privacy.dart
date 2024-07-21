import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/spacer.dart';

class TermsAndPrivacyWidget extends StatelessWidget {
  const TermsAndPrivacyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        children: [
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text: 'By logging, you agree to our',
              style: TextStyles.font11Gray400Wight,
              children: [
                TextSpan(
                  text: ' Terms & Conditions',
                  style: TextStyles.font11Black500Wight,
                ),
                TextSpan(
                  text: ' and',
                  style: TextStyles.font11Gray400Wight,
                ),
                TextSpan(
                  text: ' Privacy Policy.',
                  style: TextStyles.font11Black500Wight.copyWith(height: 1.5),
                ),
              ],
            ),
          ),
          SpacerWidget.vertical(16),
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text: 'Already have an account yet?',
              style: TextStyles.font11Gray400Wight,
              children: [
                TextSpan(
                  text: ' Sign Up',
                  style: TextStyles.font11Blue600Wight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}