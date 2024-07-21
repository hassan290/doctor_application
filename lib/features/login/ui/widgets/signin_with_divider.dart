import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SignInDividerWidget extends StatelessWidget {
  const SignInDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            endIndent: 5,
            thickness: 1,
            color: ColorManager.dividerColor,
          ),
        ),
        Text(
          'Or sign in with',
          style: TextStyles.font12Gray400Wight,
        ),
        const Expanded(
          child: Divider(
            indent: 5,
            thickness: 1,
            color: ColorManager.dividerColor,
          ),
        ),
      ],
    );
  }
}