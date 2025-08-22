import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theme/text_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
    required this.width,
    this.textcolor,

    this.isborder = true,
    this.isIcon = false,
    this.hight,
  });

  final String text;
  final Color? textcolor;
  final Color color;
  final double width;
  final void Function()? onTap;
  final bool isborder;
  final bool isIcon;
  final double? hight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: hight ?? 50.h,
        decoration: BoxDecoration(
          border: isborder ? Border.all(color: Colors.blue) : null,
          borderRadius: BorderRadius.circular(8.r),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextAppTheme.textStyle16.copyWith(
                color: textcolor ?? Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            if (isIcon == true) ...[
              SizedBox(width: 8.w),
              Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
                size: 18.sp,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
