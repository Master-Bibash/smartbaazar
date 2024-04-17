import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
        ),
        drawer: CustomDrawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 24.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff362677),
                      Color(0xff781740),
                    ],
                  ),
                ),
                child: Text(
                  'Redefing shopping,\n trade and much more.',
                  style: TextStyle(fontSize: 24.sp, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                color: const Color(0xff19328D),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 22.h,
                        ),
                        Text(
                          'Buy & sell anything.\n you\'ll forget everything else.',
                          style:
                              TextStyle(color: Colors.white, fontSize: 12.sp),
                        ),
                      ],
                    ),
                    Image.asset(ImageConstant.shoppingImage)
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              ServiceContainer(),
              SizedBox(
                height: 22.h,
              ),
              Text(
                'SPONSORED LISTINGS',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: 8.h,
              ),
              Expanded(
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 10.w),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => ItemDescriptionWidget(),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 12.h,
                    );
                  },
                ),
              ),
              // Text("hello")
            ],
          ),
        ),
      ),
    );
  }
}

class ItemDescriptionWidget extends StatelessWidget {
  const ItemDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:
              EdgeInsets.only(top: 22.h, bottom: 25.h, left: 15.w, right: 20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Color(0xffF6F1F1),
          ),
          child: Image.asset(
            ImageConstant.laptopImage,
          ),
        ),
        SizedBox(
          height: 9.h,
        ),
        Text(
          'Acer Aspire 5 A515-56-32DK Intel\n Core i3 11th Gen/15.6 FHD',
          style: TextStyle(
              fontSize: 10.sp,
              color: Colors.black,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text('Rs. 60,0000',
            style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black,
                fontWeight: FontWeight.w700)),
        Row(
          children: [
            Text('Rs. 100,00'),
            SizedBox(
              width: 10.w,
            ),
            Container(
                padding: EdgeInsets.only(
                    left: 10.w, right: 15.w, top: 5.h, bottom: 5.h),
                decoration: BoxDecoration(
                  color: const Color(0xff362677),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(10.r),
                    bottomLeft: Radius.circular(10.r),
                  ),
                ),
                child: Text(
                  '-40% Off',
                  style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Text('Tech Store Nepal Kathamandu',
            style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 12,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) =>
                  Icon(Icons.star, color: Color(0xfff781740)),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              "(4)",
              style: TextStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff888888)),
            )
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.visibility,
              size: 20,
              color: Color(0xff888888),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              '2K Views',
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff888888),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Icon(
              Icons.location_on,
              size: 20,
              color: Color(0xff888888),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Kathmandu',
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff888888),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      color: Color(0xff73193E),
      child: const Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ServicesListWidget(
                icons: openCart,
                title: 'Product',
              ),
              // SizedBox(width: 10),
              ServicesListWidget(
                icons: brandBazarIcon,
                title: 'Brandbazar',
              ),
              // SizedBox(width: 10),
              ServicesListWidget(
                icons: b2bIcon,
                title: 'B2B',
              ),
              // SizedBox(width: 10),
              ServicesListWidget(
                title: 'Used',
                icons: usedIcon,
              ),
              // SizedBox(width: 10),
              ServicesListWidget(
                icons: servicesIcon,
                title: 'Service',
              ),
              // SizedBox(width: 10),
              ServicesListWidget(
                icons: jobIcon,
                title: 'Jobs',
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class ServicesListWidget extends StatelessWidget {
  final String icons;
  final String title;
  const ServicesListWidget(
      {super.key, required this.icons, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          icons,
          colorFilter: ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(height: 3.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
