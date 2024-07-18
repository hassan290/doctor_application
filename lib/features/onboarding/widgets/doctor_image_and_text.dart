import 'package:doctor_flutter_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [

        Opacity(
          opacity: 0.5,
          child: SvgPicture.asset(
            'assets/svgs/doctor_logo_with_low_opacity.svg',
          ),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/Doctor_Onboarding.png'),
        ),
        Positioned(
          left: 55.w,
          bottom: 13.h,
          child: Text('Best Doctor\nAppointment App',style: TextStyles.font32Blue700Wight.copyWith(height: 1.4),textAlign: TextAlign.center,),
        ),
      ],
    );
  }
}
