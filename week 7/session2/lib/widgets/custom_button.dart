import 'package:flutter/material.dart';
import 'package:session2/utils/app_color.dart';
import 'package:session2/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
    required this.width,
    this.textcolor,
    this.image,
    this.isborder = true,
  });
  final String text;
  final Color? textcolor;
  final Color color;
  final double width;
  final void Function()? onTap;
  final String? image;
  final bool isborder;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isPortrait = orientation == Orientation.portrait;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: isPortrait ? width : width + 50,
        height: 50,
        decoration: BoxDecoration(
          border: isborder ? Border.all(color: AppColor.kPrimaryColor) : null,
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child:
            isPortrait
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (image != null) ...[
                      Image.asset(image!, width: 24, height: 24),
                      SizedBox(width: 8),
                    ],
                    Text(
                      text,
                      style: Styles.textStyle18.copyWith(
                        color: textcolor ?? Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
                : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (image != null)
                      Image.asset(image!, width: 24, height: 24),
                    if (image != null) SizedBox(height: 4),
                    Text(
                      text,
                      style: Styles.textStyle18.copyWith(
                        color: textcolor ?? Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
      ),
    );
  }
}
