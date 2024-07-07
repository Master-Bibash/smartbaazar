import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/view/login_screen.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/home/view/home_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  height: 50.h,
                ),
                Center(
                    child: Column(
                  children: [
                    Image.asset(ImageConstant.appLogo),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff000000)),
                    )
                  ],
                )),
                SizedBox(
                  height: 40.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.person_2_outlined,
                  hintText: 'Name',
                  validator: (String) {},
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.call,
                  hintText: 'Phone Number',
                  validator: (String) {},
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.mail,
                  hintText: 'Email',
                  validator: (String) {},
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.person_2_outlined,
                  hintText: 'User Name',
                  validator: (String) {},
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.local_activity,
                  hintText: 'Age',
                  validator: (String) {},
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.person_2_rounded,
                  hintText: 'Sex',
                  validator: (String) {},
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  icon: Icons.lock,
                  hintText: 'Password',
                  validator: (String) {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                GeneralEelevatedButton(
                  text: 'Sign Up',
                  onPresssed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                RichTextWidget(
                  title: 'Already have an account? ',
                  subtitle: 'Log In',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
