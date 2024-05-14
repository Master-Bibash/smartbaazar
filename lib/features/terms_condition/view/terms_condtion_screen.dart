import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/privacy_policy/view/privacy_policy_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

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
                    fileIcon,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Terms and Conditions',
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
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Definitions',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                    'Each of the terms mentioned below have in these Conditions of Sale Smartbazaar Service (hereinafter the "Conditions") the following meanings: ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Color(0xff36383C),
                        fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                    'Any Advertiser must be connected to the Personal Account for deposit and or manage its listings. Add first deposit automatically entails the establishment of a Personal Account to the Advertiser. Personal Account : refers to the free space than any Advertiser must create and which it should connect from the Website to disseminate, manage and view its listings. Smartbazaar: means the company that publishes and operates the Website and Mobile Site Smartbazaar, whose registered office is at Dillibazar, Kathmandu. Customer Service : Smartbazaar means the department to which the Advertiser may obtain further information. This service can be contacted via email by clicking the link on the Website and Mobile Site. Smartbazaar Service : Smartbazaar means the services made available to Users and Advertisers on the Website and Mobile Site. Website : means the website operated by Smartbazaar accessed mainly from the URL https://smartbazaar.com.np and allowing Users and Advertisers to access the Service via internet LaraClassifier. Mobile Site : is the mobile site operated by Smartbazaar accessible from the URL https://smartbazaar.com.np and allowing Users and Advertisers to access via their mobile phone service Smartbazaar. User : any visitor with access to Smartbazaar Service via the Website and Mobile Site and Consultant Service Smartbazaar accessible from different media.',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Color(0xff36383C),
                        fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Subject',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'These Terms and Conditions Of Use establish the contractual conditions applicable to any subscription by an Advertiser connected to its Personal Account from the Website and Mobile Site.',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Acceptance',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Responsibility for Smartbazaar can not be held liable for non-performance or improper performance of due control, either because of the Advertiser, or a case of major force',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Modification of these terms',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Responsibility for Smartbazaar can not be held liable for non-performance or improper performance of due control, either because of the Advertiser, or a case of major force',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Miscellaneous',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff36383C),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Responsibility for Smartbazaar can not be held liable for non-performance or improper performance of due control, either because of the Advertiser, or a case of major force',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff36383C),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GeneralTextButton(
                  width: MediaQuery.of(context).size.width,
                  title: 'Next',
                  fgColor: Colors.white,
                  bgColor: Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => PrivacyPolicyScreen()));
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
