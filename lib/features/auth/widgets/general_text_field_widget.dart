import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const CustomTextFieldWidget({
    super.key,
    required this.icon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 11.h),
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
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: Color(0xffADADAD))),
          ),
        )
      ],
    );
  }
}
