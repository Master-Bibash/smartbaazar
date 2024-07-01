import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/home/model/sponsored_model.dart';
import 'package:smartbazar/features/view/product_deatials_screen.dart';
import 'package:smartbazar/features/widgets/product_model.dart';

class ItemDescriptionWidget extends StatelessWidget {
  // final String productName;
  final SponsoredPosts sponsoredModel;
  final Function(SponsoredModel) onTap;
  const ItemDescriptionWidget(
      {super.key,
      // required this.productName,
      required this.sponsoredModel,
      required this.onTap});

  // int calculateMode(List<int> ratings) {
  //   if (ratings.isEmpty) return 0;
  //   Map<int, int> frequencyMap = {};
  //   for (int rating in ratings) {
  //     frequencyMap[rating] = (frequencyMap[ratings] ?? 0) + 1;
  //   }
  //   return frequencyMap.entries
  //       .reduce(
  //           (value, element) => value.value > element.value ? value : element)
  //       .key;
  // }

  @override
  Widget build(BuildContext context) {
    // for (var posts in sponsoredModel.sponsoredPosts!) {
    //   final modeRating =
    //       posts.avgRating != null ? calculateMode([posts.avgRating!]) : null;
    // }
    return InkWell(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (_) => const ProductDetailsScreen()));
        // onTap(sponsoredModel);
        // onTap(sponsoredMode)
      },
      child: Container(
        height: 291.h,
        width: 198.w,
        padding: EdgeInsets.only(
            top: 6.41.h, left: 8.59.w, right: 11.45.w, bottom: 7.51.h),
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 22.h, bottom: 25.h, left: 15.w, right: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: const Color(0xffF6F1F1),
              ),
              child: Image.asset(
                ImageConstant.laptopImage,
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              // 'Acer Aspire 5 A515-56-32DK Intel\n Core i3 11th Gen/15.6 FHD',
              sponsoredModel.title.toString(),
              style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(sponsoredModel.price.toString(),
                style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700)),
            Row(
              children: [
                Text(sponsoredModel.price.toString()),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                    padding: EdgeInsets.only(
                        left: 10.w, right: 15.w, top: 5.h, bottom: 5.h),
                    decoration: BoxDecoration(
                      color: const Color(0xff362677),
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(0),
                        topRight: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r),
                      ),
                    ),
                    child: Text(
                      sponsoredModel.discountedPrice.toString(),
                      style: TextStyle(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            Text(sponsoredModel.contactName.toString(),
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 6.h,
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
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
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
            SizedBox(
              height: 12.h,
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
                  sponsoredModel.pickup.toString(),
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff888888),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
