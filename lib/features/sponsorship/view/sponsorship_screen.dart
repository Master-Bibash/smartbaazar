import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_elevated_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/online_transaction_record/online_transacation_record_screen.dart';
import 'package:smartbazar/features/sponsorship/view/apply_sponsorship_price_screen.dart';
import 'package:smartbazar/features/vendor_details/widgets/bank_details_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SponsorshipScreen extends StatelessWidget {
  const SponsorshipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Row(
                  children: [
                    Icon(Icons.card_giftcard),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'SponsorShip',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Text('Go back',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff888888))),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2.w,
                color: const Color(0xffD9D9D9),
              ),
              SizedBox(
                height: 10.h,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border:
                            Border.all(width: 1.w, color: Color(0xffADADAD))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 11.w, top: 15.h, bottom: 10.w),
                          child: Text(
                            "Sponser Banner",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                        Divider(
                          thickness: 1.w,
                          color: const Color(0xffADADAD),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 61.h,
                                color: Color(0xffD9D9D9),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Recommended Size 480* 80',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xfffD33636)),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              ChooseFileWidget(),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                'Hint: Upload your banner here',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff36383C)),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              GeneralTextButton(
                                marginH: 0,
                                width: 100.w,
                                height: 28.h,
                                title: 'Add',
                                fgColor: Colors.white,
                                bgColor: const Color(0xff362677),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return SponsorShipDetailsWidget();
                  },
                ),
              ),
              GeneralTextButton(
                  width: MediaQuery.of(context).size.width,
                  title: 'Apply Sponsorship',
                  fgColor: Colors.white,
                  bgColor: const Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                const ApplySponsorshipPriceScreen()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class SponsorShipDetailsWidget extends StatelessWidget {
  const SponsorShipDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xff00000040).withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Acer Aspire 5 A515-56-32DK Intel\nCore i3, 11th Gen/15.6 FHD',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.3.h,
                          color: Colors.black),
                    ),
                  ],
                ),
                SvgPicture.asset(deleteIcon)
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            SponsorShipExpansionTileWidget(),
          ],
        ),
      ),
    );
  }
}

class SponsorShipExpansionTileWidget extends StatelessWidget {
  const SponsorShipExpansionTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF6F1F1),
      child: ExpansionTile(
        backgroundColor: Color(0xffF6F1F1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        maintainState: true,
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        title: Text(
          'Rs 60,000',
          style: TextStyle(
              color: const Color(0xff36383C),
              fontSize: 16.sp,
              fontWeight: FontWeight.w700),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Mileage',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      '1000',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff36383C)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Remaining Mileage',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      '150',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff36383C)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gift Qty',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      '1000',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff36383C)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Approval',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Text(
                      'In Review',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff36383C)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Status: In Review',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      'Banner: ',
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    GeneralTextButton(
                        marginH: 0,
                        title: 'Image',
                        height: 32.h,
                        width: 100.w,
                        fgColor: Colors.white,
                        borderColor: Color(0xffADADAD),
                        bgColor: Color(0xffADADAD),
                        onPressed: () {}),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text('Submission: 2023-01-02',
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff36383C))),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
