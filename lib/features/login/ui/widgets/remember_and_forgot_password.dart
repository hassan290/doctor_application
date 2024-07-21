import 'package:doctor_flutter_app/core/widgets/spacer.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class RememberAndForgotPasswordWidget extends StatelessWidget {
  const RememberAndForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value){}),
        const Text('Remember me'),
        SpacerWidget.horizontal(55),
        TextButton(onPressed: (){}, child: Text('Forgot Password?',style: TextStyles.font12Blue400Wight,)),
      ],
    );
  }
}
