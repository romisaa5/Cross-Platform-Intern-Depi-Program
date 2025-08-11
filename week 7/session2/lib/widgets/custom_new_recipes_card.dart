import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:session2/widgets/custom_new_recipes_card_body.dart';

class CustomNewRecipesCard extends StatelessWidget {
  const CustomNewRecipesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: 250.w,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 95.h,
            width: 250.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: CustomNewRecipesCardBody(),
          ),
          Positioned(
            top: 0.h,
            right: 10.w,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/Image.png',
                  width: 70.w,
                  height: 70.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
