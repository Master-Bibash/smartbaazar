import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/auth/widgets/general_text_field_widget.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/widgets/item_description_widget.dart';
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
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
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
                    height: 15.h,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 220.0,
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
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 30.h, left: 30.w, right: 17.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Acer Aspire 5 A515-56-32DK Intel',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700),
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
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 12.w,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4.h),
                                    decoration: BoxDecoration(
                                        color: const Color(0xffD9D9D9),
                                        borderRadius:
                                            BorderRadius.circular(4.r)),
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
                                        left: 13.w,
                                        right: 15.w,
                                        top: 4.h,
                                        bottom: 7.h),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.r),
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
                                        borderRadius:
                                            BorderRadius.circular(30.r),
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
                                            decoration:
                                                TextDecoration.lineThrough),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                          'Tech Store Nepal, kathamandu'),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          RatingBar.builder(
                                            initialRating: 4,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 12,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 1.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(Icons.star,
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
                                                color: const Color(0xff888888)),
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
                                          const Icon(Icons.share),
                                          Text(
                                            'Share',
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: const Color(0xff000000)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30.w,
                                      ),
                                      Column(
                                        children: [
                                          const Icon(Icons.share),
                                          Text(
                                            'Share',
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: const Color(0xff000000)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30.w,
                                      ),
                                      Column(
                                        children: [
                                          const Icon(Icons.share),
                                          Text(
                                            'Share',
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: const Color(0xff000000)),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.visibility,
                                    color: Color(0xff888888),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    '2K Views',
                                    style: TextStyle(
                                        color: const Color(0xff888888),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Color(0xff888888),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    'Kathamandu',
                                    style: TextStyle(
                                        color: const Color(0xff888888),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container()
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(contactSellerIcon),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Contact Seller',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff000000)),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(phoneIcon),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Call',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff000000)),
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset(messagesIcon),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Message',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff000000)),
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset(whatsAppIcon),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Whatsapp',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff000000)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                        TabBarItems(),
                        GeneralTextButton(
                            marginH: 1,
                            prefixImage: ImageConstant.visitStore,
                            bgColor: Color(0xff362677),
                            fgColor: Colors.white,
                            isSmallText: true,
                            title: 'Visit Store'),
                        SizedBox(
                          height: 20.h,
                        ),
                        ScratchWinContainer(),
                        SizedBox(
                          height: 10.h,
                        ),
                        const ProductAdditionalDetialsWidget(),
                        const ProductAvilableColorsWidget(),
                        SizedBox(
                          height: 8.h,
                        ),
                        const ProductTagListWidget(),
                        SizedBox(
                          height: 15.h,
                        ),
                        const BuyNowProdcutMinuteWidget(),
                        SizedBox(
                          height: 15.h,
                        ),
                        const SimilarListingProduct(),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TabBarItems extends StatelessWidget {
  const TabBarItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: double.infinity, // Adjust width as needed
        height: 200, // Adjust height as needed
        child: DefaultTabController(
          length: 2, // Number of tabs
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Listing Details',
                  ),
                  Tab(
                    text: 'Reviews',
                  ),
                ],
              ),
              SizedBox(height: 10), // Adjust as needed
              Expanded(
                child: Container(
                  constraints: BoxConstraints.expand(),
                  child: TabBarView(
                    children: [
                      // Content for Tab 1
                      Center(
                        child: Text('Listin Items'),
                      ),
                      // Content for Tab 2
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('0 comments'), Text('sort by')],
                            ),
                            Divider(),
                            // CustomTextFieldWidget(icon: , hintText: hintText)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScratchWinContainer extends StatelessWidget {
  const ScratchWinContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 6.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1.w, color: Color(0xffF5BF05))),
        child: Row(
          children: [
            Image.asset(
              ImageConstant.scartchWinImage,
            ),
            Expanded(
              child: RichTextWidget(
                  title: "Visit our virtual store ",
                  // titleStyle: TextStyle(
                  //     fontSize: 10.sp,
                  //     fontWeight: FontWeight.w700),
                  subtitle: "Subscribe us to win FREE prizes & get our deals",
                  subtitleStyle: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}

class ProductAdditionalDetialsWidget extends StatelessWidget {
  const ProductAdditionalDetialsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'title': "What's in the box?", 'description': 'laptop'},
      {'title': "Brand", 'description': 'Acer'},
      {'title': "What's in the box?", 'description': 'laptop'},
      {'title': "What's in the box?", 'description': 'laptop'},
    ];

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                drawerIcon,
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Additional Details',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
              )
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 3.3,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  decoration: BoxDecoration(
                      color: const Color(0xffEDECEC),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index]['title'],
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(
                            0xff000000,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        items[index]['description'],
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(
                            0xff000000,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProductAvilableColorsWidget extends StatelessWidget {
  const ProductAvilableColorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: const Color(0xffEDECEC)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Colours',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff000000)),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                const Icon(
                  Icons.check,
                  size: 25,
                  color: Color(0xff000000),
                ),
                SizedBox(width: 2.w),
                Text('Black',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000)))
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.check,
                  size: 25,
                  color: Color(0xff000000),
                ),
                SizedBox(width: 2.w),
                Text('Blue',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000)))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProductTagListWidget extends StatelessWidget {
  const ProductTagListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(tagIcon),
              SizedBox(
                width: 5.w,
              ),
              Text(
                'Tags',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              GeneralTextButton(
                marginH: 0,
                isSmallText: true,
                height: 28.h,
                title: 'Laptop',
                fgColor: const Color(0xff000000),
                borderColor: const Color(0xff888888),
                bgColor: const Color(0xff888888).withOpacity(0.13),
                onPressed: () {},
              ),
              SizedBox(
                width: 8.h,
              ),
              GeneralTextButton(
                marginH: 0,
                isSmallText: true,
                height: 28.h,
                title: 'Acer',
                fgColor: const Color(0xff000000),
                bgColor: const Color(0xff888888).withOpacity(0.13),
                borderColor: const Color(0xff888888),
                onPressed: () {},
              ),
              SizedBox(
                width: 8.h,
              ),
              GeneralTextButton(
                marginH: 0,
                isSmallText: true,
                height: 28.h,
                title: 'Black Color',
                bgColor: const Color(0xff888888).withOpacity(0.13),
                fgColor: const Color(0xff000000),
                borderColor: const Color(0xff888888),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BuyNowProdcutMinuteWidget extends StatelessWidget {
  const BuyNowProdcutMinuteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(width: 1.5.w, color: const Color(0xffADADAD))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 5.h, left: 12.w),
              child: Text(
                'Buy now within minute',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)),
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Color(0xffADADAD),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    size: 25,
                    color: Color(0xff000000),
                  ),
                  SizedBox(width: 2.w),
                  Text('Confirm your personal information & contact details.',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child: Row(
                children: [
                  const Icon(
                    Icons.check,
                    size: 25,
                    color: Color(0xff000000),
                  ),
                  SizedBox(width: 2.w),
                  Text('Enter your shipping address',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SimilarListingProduct extends StatelessWidget {
  const SimilarListingProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SIMILAR LISTING',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'View all',
                style: TextStyle(
                    fontSize: 10.sp,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            children: [
              const ItemDescriptionWidget(),
              SizedBox(
                width: 8.w,
              ),
              const ItemDescriptionWidget(),
            ],
          ),
          Row(
            children: [
              const ItemDescriptionWidget(),
              SizedBox(
                width: 8.w,
              ),
              const ItemDescriptionWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

// class SimilarListingProducts extends StatelessWidget {
//   const SimilarListingProducts({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
