import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class CreateNewListinScreen extends StatelessWidget {
  const CreateNewListinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.5.w, vertical: 16.h),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(createListingIcon),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Create New Listing',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Go Back',
                      style: TextStyle(
                          color: Color(0xff888888),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 14.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xff362677)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichTextWidget(
                        title: 'Verfiy your account ',
                        titleStyle: TextStyle(
                            // decoration: TextDecoration.underline,
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                        subtitle: ' to post Brand New',
                        subtitleStyle: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                        onPressed: () {}),
                    Text(
                      'product & Business to Business (B2B) products & Services. its FREE & takes only few minutes!',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Verify your account',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
