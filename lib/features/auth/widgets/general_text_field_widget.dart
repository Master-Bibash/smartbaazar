import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final bool? fill;
  const CustomTextFieldWidget(
      {super.key,
      required this.icon,
      required this.hintText,
      this.suffixIcon,
      this.fill,
      this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.r)),
          filled: fill,
          fillColor: fillColor,
          prefixIcon: Padding(
            padding:
                EdgeInsets.only(right: 11.w, left: 10.w, top: 5.h, bottom: 5.h),
            child: Container(
              height: 50,
              width: 52,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(
                    0xffAEC5FF,
                  )),
              child: Icon(
                icon,
                color: Color(0xff362677),
              ),
            ),
          ),
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xffADADAD))),
    );
  }
}

//  Container(
//           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 11.h),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10.r),
//               color: Color(
//                 0xffAEC5FF,
//               )),
//           child: Icon(
//             icon,
//             color: Color(0xff362677),
//           ),
//         ),