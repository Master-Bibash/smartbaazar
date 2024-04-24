import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class VendroDetailsScreen extends StatelessWidget {
  const VendroDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Image.asset(ImageConstant.personImage),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      'Vendor Name',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.black)),
                      child: SvgPicture.asset(
                        openCart,
                        colorFilter: ColorFilter.mode(
                            Color(0xff362677), BlendMode.srcIn),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                PhotoAvatarContainer(),
                SizedBox(
                  height: 16.h,
                ),
                BackGroundImageAndDescription(),
                SizedBox(
                  height: 16.h,
                ),
                AccountDetailsWidget(),
                SizedBox(
                  height: 16.h,
                ),
                BankDetailsWidget(),
                SizedBox(
                  height: 16.h,
                ),
                VerifyAccountWidget(),
                SizedBox(
                  height: 16.h,
                ),
                Container(
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
                          'Change Password',
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
                        padding:
                            EdgeInsets.only(left: 10.w, right: 45.w, top: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextFieldWidget(
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: Color(0xffADADAD),
                                ),
                                fill: true,
                                fillColor: Color(0xffF3F3F3),
                                icon: Icons.person,
                                hintText: "New Password"),
                            SizedBox(
                              height: 10.2.h,
                            ),
                            CustomTextFieldWidget(
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: Color(0xffADADAD),
                                ),
                                fill: true,
                                fillColor: Color(0xffF3F3F3),
                                icon: Icons.person,
                                hintText: "Confirm Password"),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Checkbox(
                                          value: true,
                                          activeColor: Color(0xff362677),
                                          onChanged: (newValue) {
                                            // setState(() {
                                            //   checkBoxValue = newValue;
                                            // });
                                          }),
                                      Expanded(
                                        child: Text(
                                            'I have read and agree to the  Terms & Condition'),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Checkbox(
                                          value: false,
                                          activeColor: Color(0xff362677),
                                          onChanged: (newValue) {
                                            // setState(() {
                                            //   checkBoxValue = newValue;
                                            // });
                                          }),
                                      Expanded(
                                        child: Text(
                                            'I accept to recive marketing emails, sms, notification'),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                            // GeneralEelevatedButton(
                            //     text: 'Update', onPresssed: () {})
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VerifyAccountWidget extends StatelessWidget {
  const VerifyAccountWidget({
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
              'Verify your Account',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    VerifyAccountPhotoContainer(),
                    VerifyAccountPhotoContainer(),
                    VerifyAccountPhotoContainer(),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                GeneralEelevatedButton(text: 'Update', onPresssed: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}

class VerifyAccountPhotoContainer extends StatelessWidget {
  const VerifyAccountPhotoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75.h,
          width: 95.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(width: 1.w, color: Color(0xffADADAD))),
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
        SizedBox(
          height: 5.h,
        ),
        Text(
          'PAN',
          style: TextStyle(
              color: Color(0xff888888),
              fontSize: 10.sp,
              fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}

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
                GeneralEelevatedButton(text: 'Submit', onPresssed: () {}),
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

class AccountDetailsWidget extends StatelessWidget {
  const AccountDetailsWidget({
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
              'Account Details',
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
                    hintText: "Name"),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                    fill: true,
                    fillColor: Color(0xffF3F3F3),
                    icon: Icons.call,
                    hintText: "Phone Number"),
                SizedBox(
                  height: 10.2.h,
                ),
                CustomTextFieldWidget(
                    fill: true,
                    fillColor: Color(0xffF3F3F3),
                    icon: Icons.mail,
                    hintText: "Email"),
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
                GeneralEelevatedButton(text: 'Update', onPresssed: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BackGroundImageAndDescription extends StatelessWidget {
  const BackGroundImageAndDescription({
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
              'Profile Background Images & Description',
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
          SizedBox(
            height: 16.h,
          ),
          Center(
            child: Container(
              width: 320.w,
              height: 94.h,
              color: Color(0xffD9D9D9),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w, right: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recommended Size 728* 90',
                  style: TextStyle(color: Color(0xffFF282F)),
                ),
                SizedBox(
                  height: 14.h,
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
                  height: 11.h,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff36383C)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 6.h, left: 12.w, bottom: 7.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(width: 1, color: Color(0xffADADAD)),
                    ),
                    child: Text('this is a text')),
                SizedBox(
                  height: 8.h,
                ),
                GeneralEelevatedButton(text: 'Add', onPresssed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoAvatarContainer extends StatelessWidget {
  const PhotoAvatarContainer({
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
              'Photo or Avatar',
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
            padding: EdgeInsets.only(left: 15.w),
            child: Text(
              'Recommended 1:1 Size',
              style: TextStyle(color: Color(0xffFF282F)),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: DottedBorder(
                borderType: BorderType.RRect,
                color: Color(0xffADADAD),
                padding: EdgeInsets.zero,
                radius: Radius.circular(8.r),
                strokeWidth: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Container(
                    width: 118.w,
                    height: 95.h,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
