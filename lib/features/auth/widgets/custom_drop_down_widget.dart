import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartbazar/constant/image_constant.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<String> items;
  final String? dropdownvalue;
  final ValueChanged<String?> onChanged;
  final Color? color;

  const CustomDropdownButton(
      {Key? key,
      required this.items,
      required this.dropdownvalue,
      required this.onChanged,
      this.color})
      : super(key: key);

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      elevation: 0,
      underline: Container(
        height: 0,
      ),
      value: widget.dropdownvalue,
      icon: Row(
        children: [
          SizedBox(width: 90),
          SvgPicture.asset(dropDownIcon),
        ],
      ),
      items: widget.items.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: Row(
            children: [
              Text(
                item,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: widget.color ?? Colors.black,
                ),
              ),
            ],
          ),
        );
      }).toList(),
      onChanged: widget.onChanged,
    );
  }
}
