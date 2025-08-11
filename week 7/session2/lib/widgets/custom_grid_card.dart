import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:session2/theme/text_styles.dart';

class CustomGridCard extends StatelessWidget {
  const CustomGridCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 200.h,
        width: 200.w,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset('assets/images/food.png', fit: BoxFit.cover),
              ),

              Positioned.fill(
                child: Container(color: Colors.black.withValues(alpha: .5)),
              ),

              Positioned(
                right: 10,
                bottom: 20,
                child: Icon(Icons.search, color: Colors.white, size: 30.sp),
              ),
              Positioned(
                bottom: 40,
                left: 10,
                right: 10,
                child: Text(
                  'recipe of the day',
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                right: 10,
                child: Text(
                  'By Chef John',
                  style: Styles.textStyle12.copyWith(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
