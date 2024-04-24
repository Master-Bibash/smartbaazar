import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String> itemsList = [
    'https://varro.imgix.net/1680600677822.jpg?w=600&h=370&fit=scale&q=65',
    'https://varro.imgix.net/1680600689626.jpg?w=600&h=370&fit=scale&q=65',
    'https://varro.imgix.net/1680600689626.jpg?w=600&h=370&fit=scale&q=65',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.arrow_back_ios),
                      Container(
                        padding: EdgeInsets.all(12.h),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                        child: const Icon(Icons.feed),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 250.0,
                        viewportFraction: 1.5,
                        initialPage: 0,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        }),
                    items: itemsList
                        .map(
                          (item) => itemsList.isEmpty
                              ? const SizedBox()
                              : Image.network(
                                  width: MediaQuery.of(context).size.width,
                                  item,
                                  fit: BoxFit.fill,
                                ),
                        )
                        .toList(),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r)),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h, left: 30.w, right: 17.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Acer Aspire 5 A515-56-32DK Intel',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Core i3 11th Gen/15.6 FHD',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(4.h),
                            decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(4.r)),
                            child: Text(
                              'Brand New',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff000000)),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('NPR. 60,000'),
                          const Spacer(),
                          Container(
                            padding: EdgeInsets.only(
                                left: 13.w, right: 15.w, top: 4.h, bottom: 7.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: const Color(0xff362677)),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 15.h,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 14.w,
                                right: 14.w,
                                top: 13.h,
                                bottom: 9.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: const Color(0xff362677)),
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'NPR. 100,000',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 11.w,
                                    top: 2.h,
                                    bottom: 2.w,
                                    right: 20),
                                color: const Color(0xff362677),
                                child: const Text(
                                  '-40% Off',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Tech Store Nepal, kathamandu'),
                              SizedBox(
                                height: 10.h,
                              ),
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
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Color(0xfff781740)),
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
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30.w,
                              ),
                              Column(
                                children: [
                                  Icon(Icons.share),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Column(
                                children: [
                                  Icon(Icons.share),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Column(
                                children: [
                                  Icon(Icons.share),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Color(0xff000000)),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
