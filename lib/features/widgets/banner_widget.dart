import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 60.w, top: 27.h, bottom: 27.w),
      color: Color(0xffD33636),
      child: Text(
        'AD BANNER 430*72',
        style: TextStyle(
            fontSize: 14.sp, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}
