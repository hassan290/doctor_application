import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInToolsWidget extends StatelessWidget {
  const SignInToolsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200.w,
        height: 50.h,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage('assets/images/icons/icon_google.png'),width: 46,height: 46,),
            Image(image: AssetImage('assets/images/icons/icon_facebook.png'),width:46,height: 46,),
            Image(image: AssetImage('assets/images/icons/icon_apple.png'),width: 46,height: 46,),

          ],
        ),
      ),
    );
  }
}