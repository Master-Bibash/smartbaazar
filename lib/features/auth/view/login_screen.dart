import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100.h,
                ),
                Center(
                    child: Column(
                  children: [
                    Image.asset(ImageConstant.appLogo),
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    )
                  ],
                )),
                SizedBox(
                  height: 50.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.mail,
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.lock,
                  hintText: 'Password',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000)),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                GeneralEelevatedButton(
                  text: 'Log In',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
