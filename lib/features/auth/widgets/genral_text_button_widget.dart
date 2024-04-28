import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GeneralTextButton extends StatelessWidget {
  final String title;
  final Color? bgColor;
  final Color? fgColor;
  final Color? prefixColor;
  final Color? borderColor;
  final double? borderSize;
  final double? imageH;
  final bool isSmallText;
  final bool isSvg;
  final IconData? prefixIcon;
  final EdgeInsets? textPadding;
  final VoidCallback? onPressed;
  final String? prefixImage;
  final double? borderRadius;
  final double? height;
  final double? marginH;

  const GeneralTextButton({
    Key? key,
    this.isSmallText = false,
    this.isSvg = false,
    required this.title,
    this.borderSize,
    this.borderColor,
    this.bgColor,
    this.fgColor,
    this.onPressed,
    this.borderRadius,
    this.textPadding,
    this.height,
    this.marginH,
    this.prefixImage,
    this.prefixColor,
    this.imageH,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: marginH ?? 16.h),
      height: height ?? 45.h,
      child: OutlinedButton(
        style: ButtonStyle(
          splashFactory: NoSplash.splashFactory,
          padding: MaterialStateProperty.all(textPadding),
          backgroundColor:
              MaterialStateProperty.all(bgColor ?? Colors.transparent),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: borderColor ?? const Color(0xff362677),
              width: borderSize ?? 1,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
          ),
        ),
        onPressed: () {
          FocusManager.instance.primaryFocus?.unfocus();
          if (onPressed != null) onPressed!();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null)
              Icon(
                prefixIcon,
                color: prefixColor,
                size: imageH ?? 24,
              ),
            if (prefixImage != null)
              if (isSvg)
                SvgPicture.asset(
                  prefixImage!,
                  height: imageH ?? 24,
                  color: prefixColor,
                )
              else
                Image.asset(
                  prefixImage!,
                  height: imageH ?? 24,
                  color: prefixColor,
                ),
            if (prefixImage != null || prefixIcon != null)
              const SizedBox(
                width: 5,
              ),
            Text(
              title,
              style: isSmallText
                  ? Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: fgColor ?? Color(0xff362677),
                      fontWeight: FontWeight.w700)
                  : Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: fgColor ?? Color(0xff362677),
                      fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
