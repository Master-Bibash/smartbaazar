import 'package:flutter/material.dart';
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
                height: 3.h,
              ),
              Container(
                // height: 124.h,
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
                height: 3.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Color(0xff73193E),

                child: Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                openCart,
                                colorFilter: ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                'Product',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox();
                    },
                  ),
                ),

                // Column(
                //   children: [
                //     SvgPicture.asset(
                //       openCart,
                //       colorFilter: ColorFilter.mode(
                //           Color(0xff000000), BlendMode.srcIn),
                //     ),
                //     Text('Product')
                //   ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
