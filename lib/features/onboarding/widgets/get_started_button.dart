import 'package:doctor_flutter_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const SubmitButton({
    super.key,
    required this.text, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: ColorManager.mainBlue,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size(double.infinity, 55.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          )),
      child: Text(
        text,
        style: TextStyles.font16White600Wight,
      ),
    );
  }
}
