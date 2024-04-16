import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralEelevatedButton extends StatelessWidget {
  final String text;
  const GeneralEelevatedButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff362677),
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 72.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32.r),
            bottomLeft: Radius.circular(32.r),
            topRight: Radius.circular(32.r),
            bottomRight: Radius.circular(32.r),
          ),
          side: BorderSide(
            color: Color(0xff362677), // Border color
            width: 1.0, // Border width
          ),
        ),
      ),
      child: Text(
        'Log In',
        style: TextStyle(
            fontSize: 20.sp, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}
