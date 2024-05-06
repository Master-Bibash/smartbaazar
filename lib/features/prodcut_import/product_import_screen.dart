import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/add_to_cart/view/adde_to_card_screeen.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/auth/widgets/rich_text_widget.dart';
import 'package:smartbazar/features/my_order/view/my_order_details_screen.dart';
import 'package:smartbazar/features/pending_approval/pending_approval.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class ProductImportScreen extends StatelessWidget {
  const ProductImportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F1F1),
        // appBar: AppBar(
        //   // backgroundColor: const Color(0xffF6F1F1),
        //   automaticallyImplyLeading: false,
        //   toolbarHeight: 30.h,
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.import_contacts),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Product Import',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Text('Go back',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff888888))),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2.w,
                  color: const Color(0xffD9D9D9),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 25.h,
                ),
                GeneralTextButton(
                  // marginH: 0,
                  width: MediaQuery.of(context).size.width,
                  title: 'Online Transaction',
                  fgColor: Colors.white,
                  bgColor: Color(0xff362677),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => PendingApprovalScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
