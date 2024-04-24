import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
        backgroundColor: Color(0xffF6F1F1),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Container(
                    padding: EdgeInsets.all(12.h),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                    child: Icon(Icons.feed),
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
                          ? SizedBox()
                          : Image.network(
                              width: MediaQuery.of(context).size.width,
                              item,
                              fit: BoxFit.fill,
                            ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
