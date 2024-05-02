import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ProceedToPay extends StatelessWidget {
  const ProceedToPay({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(payementIcon),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'Payment',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Spacer(),
                Text('Go back',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff888888)))
              ],
            ),
            Divider(
              thickness: 2.w,
              color: Color(0xffD9D9D9),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Particular',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff36383C)),
                      ),
                      Text(
                        'Smart Boost',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff36383C)),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff36383C)),
                      ),
                      Text('1')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
