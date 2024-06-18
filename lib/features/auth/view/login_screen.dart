import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/common/controller/generic_state.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/controller/login_controller.dart';
import 'package:smartbazar/features/auth/view/bottom_navigation_bar.dart';
import 'package:smartbazar/features/auth/view/forget_password_screen.dart';
import 'package:smartbazar/features/auth/view/signup_screen.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';
import 'package:smartbazar/utils/custom_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  WidgetRef? ref;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    ref?.listen(loginController, (previous, current) {
      if (current case ErrorState()) {
        showCustomToast(current.error.toString());
      } else if (current case SuccessState()) {
        showCustomToast(current.data.message.toString());
      }
    });
    return GenericSafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 80.h,
                ),
                Center(
                    child: Form(
                  key: _formKey,
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
                            color: const Color(0xff000000)),
                      )
                    ],
                  ),
                )),
                SizedBox(
                  height: 50.h,
                ),
                CustomTextFieldWidget(
                  controller: emailController,
                  icon: Icons.mail,
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextFieldWidget(
                  controller: passwordController,
                  icon: Icons.lock,
                  hintText: 'Password',
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  splashFactory: NoSplash.splashFactory,
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ForgetPasswordScreen()));
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff000000)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                GeneralEelevatedButton(
                  text: 'Log In',
                  onPresssed: () {
                    _performLogin();
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             const BottomNavigationScreen()));
                  },
                ),
                SizedBox(
                  height: 120.h,
                ),
                RichTextWidget(
                  title: 'Don\'t have an account? ',
                  subtitle: 'Sign Up',
                  onPressed: () {
                    _performLogin();
                  },
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

  void _performLogin() async {
    if (!_formKey.currentState!.validate()) return;
    FocusScope.of(context).unfocus();
    ref?.read(loginController.notifier).login(
          context,
          ref: ref!,
          email: emailController.text,
          password: passwordController.text,
        );
  }
}
