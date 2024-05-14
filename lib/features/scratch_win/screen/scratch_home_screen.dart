import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/create_listing/widget/create_listing_card_widget.dart';
import 'package:smartbazar/features/vendor/view/disputes_screen.dart';
import 'package:smartbazar/features/view/product_deatials_screen.dart';
import 'package:smartbazar/features/widgets/item_description_widget.dart';
import 'package:smartbazar/features/widgets/product_model.dart';
import 'package:smartbazar/features/widgets/service_container_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ScratchWinHomeScreen extends StatefulWidget {
  const ScratchWinHomeScreen({super.key});

  @override
  State<ScratchWinHomeScreen> createState() => _ScratchWinHomeScreenState();
}

class _ScratchWinHomeScreenState extends State<ScratchWinHomeScreen> {
  List<Product> product = [
    // Your list of products
    Product(
      name: 'Acer Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
    ),
    Product(
      name: 'Dell Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
    ),
    Product(
      name: 'Acer Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
    ),
    Product(
      name: 'Leneov Aspire 5 A515-56-32DK Intel Core i3 11th Gen/15.6 FHD',
    ),
  ];
  List<Product> filteredProducts = [];

  @override
  void initState() {
    filteredProducts = product;
    super.initState();
  }

  void filterProducts(String query) {
    setState(() {
      if (query.isNotEmpty) {
        filteredProducts = product
            .where((product) =>
                product.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        filteredProducts = product;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      color: Colors.white,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffF6F1F1),
        appBar: AppBar(
          toolbarHeight: 85.h,
          leadingWidth: 30.h,
          titleSpacing: 5,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  height: 33.h,
                  child: TextFormField(
                    onChanged: (query) {
                      filterProducts(query);
                    },
                    decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIconConstraints: BoxConstraints(minWidth: 40.w),
                        hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffBFBFBF)),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(top: 5.h, left: 8.w),
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
                            color: const Color(0xff362677),
                          ),
                          child: Icon(
                            Icons.search,
                            size: 30.sp,
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180.h,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.r)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    shareContainer(),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: TextFormField(
                        onChanged: (query) {
                          filterProducts(query);
                        },
                        decoration: InputDecoration(
                            hintText: 'Search...',
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 40.w),
                            hintStyle: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffBFBFBF)),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(top: 5.h, left: 8.w),
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
                                color: const Color(0xff362677),
                              ),
                              child: Icon(
                                Icons.search,
                                size: 30.sp,
                                color: Colors.white,
                              ),
                            ),
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r))),
                      ),
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 500.h,
                      child: DefaultTabController(
                        length: 3, // Number of tabs
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const TabBar(
                              tabAlignment: TabAlignment.start,
                              isScrollable: true,
                              dividerColor: Color(0xffD9D9D9),
                              tabs: [
                                Tab(
                                  text: 'Homepage',
                                ),
                                Tab(
                                  text: 'Brand New',
                                ),
                                Tab(
                                  text: 'Used',
                                ),
                              ],
                            ),
                            Expanded(
                              // height: double.infinity,
                              child: TabBarView(
                                physics: ScrollPhysics(),
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.h),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ScratchWinContainer(),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'HOT DEALS',
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black),
                                              ),
                                              SizedBox(
                                                width: 5.w,
                                              ),
                                              Image.asset(
                                                  ImageConstant.flameIcon),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 292.h,
                                            child: ListView.separated(
                                              primary: false,
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              padding:
                                                  EdgeInsets.only(left: 2.w),
                                              shrinkWrap: true,
                                              itemCount:
                                                  filteredProducts.length,
                                              itemBuilder: (context, index) {
                                                final product =
                                                    filteredProducts[index];
                                                return ItemDescriptionWidget(
                                                  product: product,
                                                  onTap: (product) {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (_) =>
                                                                ProductDetailsScreen(
                                                                  product:
                                                                      product,
                                                                )));
                                                  },
                                                  // productName: product.name,
                                                );
                                              },
                                              separatorBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return SizedBox(
                                                  width: 12.h,
                                                );
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Text(
                                            'Treding',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 291.h,
                                            child: ListView.separated(
                                              primary: false,
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              padding:
                                                  EdgeInsets.only(left: 2.w),
                                              shrinkWrap: true,
                                              itemCount:
                                                  filteredProducts.length,
                                              itemBuilder: (context, index) =>
                                                  ItemDescriptionWidget(
                                                product:
                                                    filteredProducts[index],
                                                onTap: (p) {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (_) =>
                                                              ProductDetailsScreen(
                                                                  product: p)));
                                                },
                                              ),
                                              separatorBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return SizedBox(
                                                  width: 12.h,
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 292.h,
                    //   child: ListView.separated(
                    //     primary: false,
                    //     physics: const BouncingScrollPhysics(),
                    //     scrollDirection: Axis.horizontal,
                    //     padding: EdgeInsets.only(left: 5.w),
                    //     shrinkWrap: true,
                    //     itemCount: filteredProducts.length,
                    //     itemBuilder: (context, index) {
                    //       final product = filteredProducts[index];
                    //       return ItemDescriptionWidget(
                    //         product: product,
                    //         onTap: (product) {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (_) => ProductDetailsScreen(
                    //                         product: product,
                    //                       )));
                    //         },
                    //         // productName: product.name,
                    //       );
                    //     },
                    //     separatorBuilder: (BuildContext context, int index) {
                    //       return SizedBox(
                    //         width: 12.h,
                    //       );
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 20.h),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         'Tranding',
              //         style: TextStyle(
              //             fontSize: 14.sp,
              //             fontWeight: FontWeight.w700,
              //             color: Colors.black),
              //       ),
              //       SizedBox(
              //         height: 291.h,
              //         child: ListView.separated(
              //           primary: false,
              //           physics: const BouncingScrollPhysics(),
              //           scrollDirection: Axis.horizontal,
              //           padding: EdgeInsets.only(left: 5.w),
              //           shrinkWrap: true,
              //           itemCount: filteredProducts.length,
              //           itemBuilder: (context, index) => ItemDescriptionWidget(
              //             product: filteredProducts[index],
              //             onTap: (p) {
              //               Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (_) =>
              //                           ProductDetailsScreen(product: p)));
              //             },
              //           ),
              //           separatorBuilder: (BuildContext context, int index) {
              //             return SizedBox(
              //               width: 12.h,
              //             );
              //           },
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 20.h,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class shareContainer extends StatelessWidget {
  const shareContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CreateListingCardWidget(
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                ImageConstant.adidasLogo,
                height: 40.h,
              )
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adidas\n10,000 Subscribers',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Brand Bazaar | Flagship Store\nContact Seller:\n +977-98XXXXXXXX',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    whatsAppIcon,
                    height: 15.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  SvgPicture.asset(
                    viberIcon,
                    height: 15.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    Icons.call,
                    size: 15.h,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            width: 30.w,
          ),
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: const Color.fromARGB(255, 42, 106, 158)),
                  padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.facebook_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.redAccent),
                child: SvgPicture.asset(
                  tagIcon,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Subscribe',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
