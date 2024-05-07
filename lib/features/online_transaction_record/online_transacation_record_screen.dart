import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/auth/widgets/genral_text_button_widget.dart';
import 'package:smartbazar/features/sponsorship/view/sponsorship_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class OnlineTransactionRecordScreen extends StatelessWidget {
  const OnlineTransactionRecordScreen({super.key});

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
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.money),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Online Transaction Record',
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
                height: 10.h,
              ),
              Expanded(
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
                            text: 'All Transaction',
                          ),
                          Tab(
                            text: 'Hold Transaction',
                          ),
                          Tab(
                            text: 'Release Transaction',
                          )
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          physics: const ScrollPhysics(),
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.h),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder: (context, int index) =>
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              child:
                                                  const OnlineTransactionRecordWidget(),
                                            ),
                                        separatorBuilder: (context, index) =>
                                            SizedBox(
                                              height: 14.h,
                                            ),
                                        itemCount: 3),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Divider(
                                      thickness: 2.w,
                                      color: const Color(0xffD9D9D9),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GeneralTextButton(
                          // marginH: 0,
                          width: MediaQuery.of(context).size.width,
                          title: 'SponSorship',
                          fgColor: Colors.white,
                          bgColor: const Color(0xff362677),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const SponsorshipScreen()));
                          })
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

class OnlineTransactionRecordWidget extends StatelessWidget {
  const OnlineTransactionRecordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 16.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Suraj Lohani',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
              Text('Rs 60,200',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xff36383C),
                      fontWeight: FontWeight.w700)),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Text('Transaction ID: 12345',
              style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: 8.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: const Color(0xffF6F1F1)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Amount',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                    Text('Rs 60,200',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: const Color(0xff36383C),
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Amount',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                    Text('Rs 200',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: const Color(0xff36383C),
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Text('Status: Pending',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 120.w,
                    ),
                    Text('Order ID: 12345',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
