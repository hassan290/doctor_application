import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final bool? isObscureText;
  final EdgeInsetsGeometry? padding;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.padding,
    this.suffixIcon,
    this.isObscureText, this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(),
      validator: validator,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyles.focusTextFiled,
        contentPadding:
            padding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide:
              BorderSide(color: ColorManager.enabledBorderTextForm, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide:
              BorderSide(color: ColorManager.focusBorderTextForm, width: 1.w),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide:
              BorderSide(color: ColorManager.errorBorderTextForm, width: 1.w),
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
    );
  }
}
