import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/contact_us/view/page_not_found_screen.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/privacy_policy/view/privacy_policy_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF6F1F1),
          toolbarHeight: 50.h,
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    messagesIcon,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Contact US',
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      'Go back',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                thickness: 2.w,
                color: Color(0xffD9D9D9),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 136.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xffD9D9D9)),
                  child: Center(
                    child: Text(
                      'Google Maps API',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffADADAD)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First Name ',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: const Color(0xffADADAD))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Last Name ',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: 'Last Name',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: const Color(0xffADADAD))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company Name ',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: 'Company Name',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: const Color(0xffADADAD))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address ',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: 'Email Address',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: const Color(0xffADADAD))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Message ',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Describe your message',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: const Color(0xffADADAD))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GeneralTextButton(
                  width: MediaQuery.of(context).size.width,
                  title: 'Submit ',
                  fgColor: Colors.white,
                  bgColor: Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => PageNotFoundScreen()));
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
