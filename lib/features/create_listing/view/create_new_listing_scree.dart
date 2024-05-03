import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/custom_check_box_widgt.dart';
import 'package:smartbazar/features/auth/widgets/custom_drop_down_widget.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class CreateNewListinScreen extends StatefulWidget {
  const CreateNewListinScreen({super.key});

  @override
  State<CreateNewListinScreen> createState() => _CreateNewListinScreenState();
}

class _CreateNewListinScreenState extends State<CreateNewListinScreen> {
  String dropdownvalue = 'Used';
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Padding(
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
                    SizedBox(
                      width: 5.w,
                    ),
                    CircleAvatar(
                      radius: 12.r,
                      backgroundColor: Color(0xffADADAD),
                      child: Text(
                        'i',
                        style: TextStyle(color: Colors.white),
                      ),
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
                  padding:
                      EdgeInsets.symmetric(vertical: 11.h, horizontal: 14.w),
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Type',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            ' *',
                            style: TextStyle(
                                color: Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp),
                          )
                        ],
                      ),
                      Spacer(),
                      CustomDropdownButton(
                        items: ['Used', 'Item 2', 'Item 3'],
                        dropdownvalue: dropdownvalue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Category',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Text(
                            ' *',
                            style: TextStyle(
                                color: Color(0xffD33636),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp),
                          )
                        ],
                      ),
                      Spacer(),
                      CustomDropdownButton(
                        items: ['Used', 'Item 2', 'Item 3'],
                        dropdownvalue: dropdownvalue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          ' *',
                          style: TextStyle(
                              color: Color(0xffD33636),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                    Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Listing Tile',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          ' *',
                          style: TextStyle(
                              color: Color(0xffD33636),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Describe what makes your listing unique',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Color(0xffADADAD))),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Text(
                      "What's  in the box?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: "Mention what's included",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                const ReturnPolicyCardWidget(),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      'Packaged Product Dimension',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Spacer(),
                    CustomCheckbox(
                      value: _isChecked,
                      onChanged: (bool newValue) {
                        setState(() {
                          _isChecked = newValue;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Hyper Delivery',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(
                            (0xff888888),
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    // Text(
                    //   'Length(cm)',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 16.sp,
                    //       color: Colors.black),
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Length(cm)',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          ' *',
                          style: TextStyle(
                              color: Color(0xffD33636),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),
                    Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Lenght in cm',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    // Text(
                    //   'Width (cm)',
                    //   style: TextStyle(
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 16.sp,
                    //       color: Colors.black),
                    // ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Width (cm)',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          ' *',
                          style: TextStyle(
                              color: Color(0xffD33636),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp),
                        )
                      ],
                    ),

                    Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Width in cm',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Text(
                      'Height (cm)',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Height in cm',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Text(
                      'Weight (cm)',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Weight in KG',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.w,
                ),
                CreateListingCardWidget(
                    child: Row(
                  children: [
                    Text(
                      'City',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Select  a city',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp,
                                color: Color(0xffADADAD))),
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 10.h,
                ),
                CreateListingCardWidget(
                    child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Tags",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                      decoration: BoxDecoration(
                          color: Color(0xffEDECEC),
                          borderRadius: BorderRadius.circular(10.r),
                          border:
                              Border.all(width: 1.w, color: Color(0xff888888))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.close,
                            color: Color(0xff888888),
                          ),
                          Text('Acer')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                      decoration: BoxDecoration(
                          color: Color(0xffEDECEC),
                          borderRadius: BorderRadius.circular(10.r),
                          border:
                              Border.all(width: 1.w, color: Color(0xff888888))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.close,
                            color: Color(0xff888888),
                          ),
                          Text('Black')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                      decoration: BoxDecoration(
                          color: Color(0xffEDECEC),
                          borderRadius: BorderRadius.circular(10.r),
                          border:
                              Border.all(width: 1.w, color: Color(0xff888888))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.close,
                            color: Color(0xff888888),
                          ),
                          Text('Laptop')
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                  ],
                )),
                SizedBox(
                  height: 15.h,
                ),
                SellerInformationWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SellerInformationWidget extends StatelessWidget {
  const SellerInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(userIcon),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Seller Information',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        CreateListingCardWidget(
            child: Row(
          children: [
            Text(
              'Email',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Colors.black),
            ),
            Spacer(),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'XXX@gmail.com',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xffADADAD))),
              ),
            ),
          ],
        )),
        SizedBox(
          height: 10.h,
        ),
        CreateListingCardWidget(
            child: Row(
          children: [
            Text(
              'Pickup Location',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Colors.black),
            ),
            Spacer(),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'Select location',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xffADADAD))),
              ),
            ),
          ],
        )),
        SizedBox(
          height: 10.h,
        ),
        CreateListingCardWidget(
            child: Row(
          children: [
            Text(
              'Phone Number',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Colors.black),
            ),
            Spacer(),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: '98XXXXXX',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xffADADAD))),
              ),
            ),
            SizedBox(
              width: 30.w,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              decoration: BoxDecoration(
                  color: Color(0xffEDECEC),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(
                children: [
                  CustomCheckbox(value: false, onChanged: (value) {}),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Hide',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff888888),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            Icon(Icons.camera_alt),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Photos',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        SelectPhotFromFilesContainer(),
        Center(
          child: Text(
            'Add up to 6 pictures. Use real pictures of your products, not cataloges.',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10.sp,
                color: Color(0xffADADAD)),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            SvgPicture.asset(tagIcon),
            SizedBox(
              width: 7.w,
            ),
            Text(
              'Pricing',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Permium Listing',
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xff888888)),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'The premium package help seller to promote their products or service by giving more visibility to their listings to attract more buyers and sell faster',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10.sp,
              color: Color(0xffADADAD)),
        ),
        SizedBox(
          height: 15.h,
        ),
        CreateListingCardWidget(
            child: Row(
          children: [
            Text(
              'Regular (Free)',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: Colors.black),
            ),
            Spacer(),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'Rs. 0.00',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xffADADAD))),
              ),
            ),
          ],
        )),
        SizedBox(
          height: 4.h,
        ),
        Text(
          'Keep online for 60 days',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10.sp,
              color: Color(0xffADADAD)),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 20.h,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Color(0xff362677)),
          child: Row(
            children: [
              Text(
                'Smart Boost',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                'Rs. 50',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Text(
          "90 days of promotion | Facebook Ads (4 days) | Up to 10 images allowed. Facebook boost fir 4 days (5 per day) + 2 discount | Pay only 18 with free designing! Call 9840714218 for details | Displayed at the top of the page in search result page | Featured on the home page | Featured in the category | Keep online for 90 days.",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10.sp,
              color: Color(0xffADADAD)),
        ),
        SizedBox(
          height: 30.h,
        ),
        Center(
            child: GeneralEelevatedButton(text: 'Submit', onPresssed: () {})),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}

class SelectPhotFromFilesContainer extends StatelessWidget {
  const SelectPhotFromFilesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 13.5.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(width: 1.w, color: Color(0xffADADAD))),
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(10.r),
          // padding: EdgeInsets.all(6),
          dashPattern: [2, 3],
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 55.h),
              height: 180.h,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Click to select files',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xffADADAD),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 100.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 13.w, vertical: 9.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border:
                            Border.all(width: 1.w, color: Color(0xffADADAD))),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.open_in_browser_outlined),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'Browse..',
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class ReturnPolicyCardWidget extends StatefulWidget {
  const ReturnPolicyCardWidget({
    super.key,
  });

  @override
  State<ReturnPolicyCardWidget> createState() => _ReturnPolicyCardWidgetState();
}

class _ReturnPolicyCardWidgetState extends State<ReturnPolicyCardWidget> {
  bool _isvalid = false;
  bool _isDamge = false;
  @override
  Widget build(BuildContext context) {
    return CreateListingCardWidget(
        child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Return Policy',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '7 days Exchange& Return',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomCheckbox(
                    value: _isvalid,
                    onChanged: (value) {
                      setState(() {
                        _isDamge = value;
                      });
                    }),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'Valid for change of mind',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                CustomCheckbox(
                    value: _isvalid,
                    onChanged: (value) {
                      setState(() {
                        _isDamge = value;
                      });
                    }),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'Valid for defective, missing',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
          ],
        )
      ],
    ));
  }
}
