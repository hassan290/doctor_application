import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styles.dart';

class DoctorLogo extends StatelessWidget {
  const DoctorLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/logo_app.svg',
        ),
        SizedBox(width: 8.w),
        Text('DocDoc', style: TextStyles.font24Black700Wight),
      ],
    );
  }
}
