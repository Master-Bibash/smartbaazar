import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';

final defaultPinTheme = PinTheme(
    width: 55.w,
    height: 45.h,
    textStyle: TextStyle(
        fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.black),
    decoration: BoxDecoration(
        color: const Color(0xffD1DCF9).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: const Color(0xffD1DCF9))));
