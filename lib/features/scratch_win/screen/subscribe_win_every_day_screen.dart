import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/terms_condition/view/terms_condtion_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class SubscribeAndWinEveryDay extends StatelessWidget {
  const SubscribeAndWinEveryDay({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 35.h,
        ),
        backgroundColor: const Color(0xffF6F1F1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 50.h, left: 45.w, right: 35.w, bottom: 55.h),
                    decoration: BoxDecoration(
                      color: const Color(0xff362677),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Subscribe AND WIN\nEVERDAY\nBANNER',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'ALL GIFTS WILL BE\nDISPLAYED IN THE BANNER',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    left: 20.w,
                    child: Row(
                      children: [
                        const GiftDescriptionContainer(),
                        SizedBox(
                          width: 10.w,
                        ),
                        const GiftDescriptionContainer(),
                        SizedBox(
                          width: 10.w,
                        ),
                        const GiftDescriptionContainer(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    const SubscribeWinContainer(
                      title: 'What is Subscribe and Win?',
                      subTitle:
                          'Subscribe and win promotions, also known as instant win games, typically have a set of terms and conditions that govern how the game is played and how prizes are awarded. These terms and conditions may include rules on how to enter the game, how to claim a prize, and any limitations or restrictions on participation. These terms and conditions may include rules on how to enter the game, how to claim a prize, and any limitations or restrictions on participation.',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SubscribeWinContainer(
                      title: 'How to Participate?',
                      subTitle:
                          'These terms and conditions may include rules on how to enter the game, how to claim a prize, and any limitations or restrictions on participation.',
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 25.h,
                                width: 25.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffFF282F)),
                                child: Icon(
                                  Icons.heart_broken,
                                  color: Colors.white,
                                  size: 10.h,
                                ),
                                // child: SvgPicture.asset(
                                //   heartIcon,
                                //   colorFilter: ColorFilter.mode(
                                //       Colors.white, BlendMode.srcIn),
                                // ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Follow any Vendors'\npage to enable hit\nnow button",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.card_giftcard,
                                color: const Color(0xff0338C0),
                                size: 20.h,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Follow any Vendors'\npage to enable hit\nnow button",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const GiftWinnerContianerWidget(),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                              width: 1.w, color: const Color(0xffADADAD))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Today's Winner",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Center(
                            child: Container(
                              width: 46.w,
                              height: 2.h,
                              color: const Color(0xff0138C2),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  ImageConstant.adidasLogo,
                                  height: 30.h,
                                ),
                                Image.asset(ImageConstant.samasungImage),
                                Image.asset(ImageConstant.appleImage),
                                Image.asset(
                                  ImageConstant.adidasLogo,
                                  height: 30.h,
                                ),
                                Image.asset(ImageConstant.samasungImage),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const Divider(
                            color: Color(0xffADADAD),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Mileage for Prize Sponsors",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            width: 90.w,
                            height: 3.h,
                            color: const Color(0xff0138C2),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "promotion, Facebook & Instagram boost that will be reached out to millions of viewers all over Nepal. Associate Prize Sponsors' name shall be announced in Nephop Ko Shreepech as prize sponsors. Nephop Ko Shreepech is a rap/ hiphop TV reality show broadcasted in Image Channel every Tuesday & Wednesday, 8 to 9 pm. The show has more than 6 million youtube views every week. Hence, this is a very effective platform for sponsors to promote their brand, products and services.",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "promotion, Facebook & Instagram boost that will be reached out to millions of viewers all over Nepal. Associate Prize Sponsors' name shall be announced in Nephop Ko Shreepech as prize sponsors. Nephop Ko Shreepech is a rap/ hiphop TV reality show broadcasted in Image Channel every Tuesday & Wednesday, 8 to 9 pm. The show has more than 6 million youtube views every week. Hence, this is a very effective platform for sponsors to promote their brand, products and services.",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          GeneralTextButton(
                            // marginH: 0,
                            height: 35.h,
                            width: MediaQuery.of(context).size.width / 1.8,
                            title: 'Become a Prize Sponsor',
                            fgColor: Colors.white,
                            bgColor: const Color(0xff362677),
                            borderRadius: 10.r,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => TermsConditionScreen()));
                            },
                          )
                        ],
                      ),
                    ),
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

class GiftWinnerContianerWidget extends StatelessWidget {
  const GiftWinnerContianerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: const Color(0xffADADAD))),
      child: Column(
        children: [
          Text(
            "Today's Winner",
            style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 46.w,
            height: 2.h,
            color: const Color(0xff0138C2),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TodayGiftWinnerTextWidget(),
              TodayGiftWinnerTextWidget(),
              TodayGiftWinnerTextWidget(),
              TodayGiftWinnerTextWidget(),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TodayGiftWinnerTextWidget(),
              TodayGiftWinnerTextWidget(),
              TodayGiftWinnerTextWidget(),
              TodayGiftWinnerTextWidget(),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TodayGiftWinnerTextWidget(),
              TodayGiftWinnerTextWidget(),
              TodayGiftWinnerTextWidget(),
              TodayGiftWinnerTextWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class TodayGiftWinnerTextWidget extends StatelessWidget {
  const TodayGiftWinnerTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'User Name 1',
          style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        Text(
          'Gift Rs XXXX',
          style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
      ],
    );
  }
}

class GiftDescriptionContainer extends StatelessWidget {
  const GiftDescriptionContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 14.h, left: 14.w, right: 6.w, bottom: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total gifts worth',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ),
          Text(
            'Rs. 50,000',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class SubscribeWinContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget? widget;
  const SubscribeWinContainer(
      {super.key, this.widget, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 9.h, left: 10.w, right: 6.w, bottom: 14.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(width: 1.w, color: const Color(0xffADADAD))),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 46.w,
            height: 2.h,
            color: const Color(0xff0138C2),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            subTitle,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          SizedBox(
            height: 10.h,
          ),
          widget ?? const Text('')
        ],
      ),
    );
  }
}
