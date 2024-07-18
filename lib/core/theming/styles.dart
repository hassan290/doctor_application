import 'package:doctor_flutter_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Wight= TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );

  static TextStyle font32Blue700Wight= TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: ColorManager.mainBlue,
  );

  static TextStyle font16White600Wight= TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white
  );

  static TextStyle font10Gray400Wight= TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: Colors.grey
  );

}