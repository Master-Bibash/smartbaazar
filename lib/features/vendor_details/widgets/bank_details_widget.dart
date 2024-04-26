import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';

class BankDetailsWidget extends StatelessWidget {
  const BankDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(bottom: 18.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 1, color: Color(0xffADADAD))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 17.h,
              left: 12.w,
            ),
            child: Text(
              'Bank Details',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: Color(0xffADADAD),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 45.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFieldWidget(
                    fill: true,
                    fillColor: Color(0xffF3F3F3),
                    icon: Icons.person,
                    hintText: "Bnnk Name"),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                    fill: true,
                    fillColor: Color(0xffF3F3F3),
                    icon: Icons.call,
                    hintText: "Bank Branch"),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                    fill: true,
                    fillColor: Color(0xffF3F3F3),
                    icon: Icons.mail,
                    hintText: "Account Holder Name"),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                    fill: true,
                    fillColor: Color(0xffF3F3F3),
                    icon: Icons.person_outline,
                    hintText: "User Name"),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                    height: 75.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border:
                            Border.all(width: 1.w, color: Color(0xffADADAD))),
                    child: Center(
                      child: Text(
                        'Add Photo',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Color(0xff888888),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffEDECEC)),
                  child: Row(
                    children: [
                      Text(
                        'Choose File',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff36383C)),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffADADAD)),
                      ),
                      SizedBox(
                        width: 11.w,
                      ),
                      Text(
                        'No File Chosen',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff36383C)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GeneralEelevatedButton(
                    text: 'Submit',
                    isSmallText: true,
                    width: 115.w,
                    onPresssed: () {}),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
