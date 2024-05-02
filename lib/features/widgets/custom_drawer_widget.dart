import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/create_listing/view/create_new_listing_scree.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> drawerList = [
      {'imageIcon': openCart, 'title': 'Products'},
      {'imageIcon': brandBazarIcon, 'title': 'B2B'},
      {'imageIcon': b2bIcon, 'title': 'B2B'},
      {'imageIcon': usedIcon, 'title': 'Used'},
      {'imageIcon': servicesIcon, 'title': 'Services'},
      {'imageIcon': jobIcon, 'title': 'Jobs'},
      {'imageIcon': eventIcon, 'title': 'Event'},
      {'imageIcon': groceryIcon, 'title': 'Grocery'},
    ];
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.54,
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 25.h, right: 16, left: 15, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(ImageConstant.appLogo),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Product",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff362677)),
                ),
                Icon(Icons.clear)
              ],
            ),
            SizedBox(
              height: 45.h,
            ),
            Expanded(
              child: DrawerItemWidget(
                listOfDrawerItem: drawerList,
              ),
            ),
            Divider(
              thickness: 1.0,
              color: const Color(0xff000000).withOpacity(0.15),
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => CreateNewListinScreen()));
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  const Icon(Icons.add),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Creating Listing',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItemWidget extends StatelessWidget {
  final List<Map<String, dynamic>> listOfDrawerItem;
  const DrawerItemWidget({super.key, required this.listOfDrawerItem});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                listOfDrawerItem[index]['imageIcon'],
                colorFilter:
                    ColorFilter.mode(Color(0xff000000), BlendMode.srcIn),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                listOfDrawerItem[index]['title'],
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: 20.h,
        child: Divider(
          thickness: 1.0,
          color: Color(0xff000000).withOpacity(0.15),
        ),
      ),
      itemCount: listOfDrawerItem.length,
    );
  }
}
