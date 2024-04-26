import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RichTextWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final TextStyle? subtitleStyle;
  const RichTextWidget({
    super.key,
    required this.subtitle,
    required this.title,
    required this.onPressed,
    this.textStyle,
    this.subtitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: title,
          style: textStyle ??
              TextStyle(
                  color: const Color(0xffADADAD),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500),
          children: <TextSpan>[
            TextSpan(
                text: subtitle,
                style: subtitleStyle ??
                    TextStyle(
                        color: const Color(0xff000000),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    onPressed();
                  })
          ]),
    );
  }
}
