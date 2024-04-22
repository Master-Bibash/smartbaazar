import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class MessageViewScreen extends StatelessWidget {
  const MessageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Message"),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.mail_outline,
                    ),
                    Text(
                      'Chat',
                      style: TextStyle(
                          fontSize: 10.sp, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Color(0xff362677),
                    ),
                    Text(
                      'Alerts',
                      style: TextStyle(
                          color: Color(0xff362677),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 11.h,
            ),
            Text(
              'Pervious Message',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000).withOpacity(0.5)),
            ),
            SizedBox(
              height: 12.h,
            ),
            ListOfMessages(),
            SizedBox(
              height: 20.h,
            ),
            ListOfMessages(),
            SizedBox(
              height: 20.h,
            ),
            ListOfMessages(),
            SizedBox(
              height: 20.h,
            ),
            ListOfMessages(),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      )),
    );
  }
}

class ListOfMessages extends StatelessWidget {
  const ListOfMessages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(12.h),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xffD9D9D9)),
          child: Icon(Icons.person_3_outlined),
        ),
        SizedBox(
          width: 11.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign up for Smartbazar',
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'You can  now signup for smartbazar',
              style: TextStyle(
                  fontSize: 12.sp,
                  overflow: TextOverflow.ellipsis,
                  color: Color(0xff000000).withOpacity(0.45),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        Spacer(),
        Container(
          height: 12.h,
          width: 12.w,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xff781740)),
        )
      ],
    );
  }
}
