import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/widgets/banner_widget.dart';
import 'package:smartbazar/features/widgets/brand_bazar_widget.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/features/widgets/item_description_widget.dart';
import 'package:smartbazar/features/widgets/service_container_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      color: Colors.white,
      child: Scaffold(
        key: _key,
        backgroundColor: const Color(0xffF6F1F1),
        appBar: AppBar(
          toolbarHeight: 85.h,
          leadingWidth: 30.h,
          titleSpacing: 5,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: SvgPicture.asset(drawerIcon),
            onPressed: () {
              _key.currentState!.openDrawer();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  height: 35.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'search...',
                        prefixIconConstraints: BoxConstraints(minWidth: 30),
                        hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffBFBFBF)),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(top: 8.h, left: 5.w),
                          child: Icon(
                            Icons.search,
                            size: 20.sp,
                          ),
                        ),
                        suffixIcon: Container(
                          width: 70.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25.r),
                                topRight: Radius.circular(25.r)),
                            color: Color(0xff362677),
                          ),
                          child: Icon(
                            Icons.search,
                            size: 25,
                            weight: 25,
                            color: Colors.white,
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r))),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 30.h,
                width: 30.h,
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.w,
                    )),
                child: SvgPicture.asset(openCart),
              ),
            ],
          ),
        ),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          horizontal: 26.w, vertical: 24.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r)),
                        gradient: const LinearGradient(
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
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
                                height: 20.h,
                              ),
                              Text(
                                'Buy & sell anything.\n you\'ll forget everything else.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.sp),
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
                      height: 20.h,
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
                    SizedBox(
                      height: 292.h,
                      child: ListView.separated(
                        primary: false,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 5.w),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) =>
                            ItemDescriptionWidget(),
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 12.h,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              BannerWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tranding',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 291.h,
                      child: ListView.separated(
                        primary: false,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 5.w),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) =>
                            ItemDescriptionWidget(),
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 12.h,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              BannerWidget(),
              SizedBox(
                height: 20.h,
              ),
              BrandBazarWidget(),
              SizedBox(
                height: 12.h,
              ),
              BannerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
