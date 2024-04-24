import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartbazar/features/message/view/message_view_screen.dart';
import 'package:smartbazar/features/vendor_details/view/vendor_details_screen.dart';
import 'package:smartbazar/features/view/home_screen.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

// class BottomNavigationScreen extends StatefulWidget {
//   const BottomNavigationScreen({super.key});

//   @override
//   State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
// }

// class _BottomNavigationScreenState extends State<BottomNavigationBar> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Demo'),
//       ),
//       body: _pages.elementAt(_selectedTab),
//       bottomNavigationBar: BottomNavigationBar(items: items),
//     );
//   }
// }

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedTab = 0;

  List _pages = [
    // Center(
    //   child: Text("Home"),
    // ),
    HomeScreen(),

    MessageViewScreen(),
    Center(
      child: Text("Contact"),
    ),
    VendroDetailsScreen(),
    Center(
      child: Text("pppp"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 246, 246),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          padding: EdgeInsets.all(20.h),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 3.w, color: Colors.white),
              color: const Color.fromARGB(255, 238, 234, 234)),
          child: Icon(
            Icons.qr_code_scanner_rounded,
          ),
          // elevation: 3.0,
        ),
        body: _pages.elementAt(_selectedTab),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35.r),
              topRight: Radius.circular(35.r),
            ),
            child: SizedBox(
              height: 80.h,
              child: BottomNavigationBar(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                type: BottomNavigationBarType.fixed,
                currentIndex: _selectedTab,
                onTap: (index) => _changeTab(index),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.mail),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.feed_outlined),
                    label: 'Feed',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_2_rounded),
                    label: 'Account',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
