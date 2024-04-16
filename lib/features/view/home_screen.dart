import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartbazar/constant/image_constant.dart';
import 'package:smartbazar/features/widgets/custom_drawer_widget.dart';
import 'package:smartbazar/general_widget/general_safe_area.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GenericSafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
        ),
        drawer: CustomDrawer(),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
