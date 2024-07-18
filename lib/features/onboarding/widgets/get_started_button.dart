import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: ColorManager.mainBlue,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size(double.infinity, 55.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          )
      ),
      child: Text('Get Started',style: TextStyles.font16White600Wight,),
    );
  }
}