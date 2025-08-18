import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:session2/utils/text_styles.dart';
import 'package:session2/widgets/star_rate.dart';

class CustomNewRecipesCardBody extends StatelessWidget {
  const CustomNewRecipesCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 5.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 160.w,
            child: Text(
              'Delicious Pasta Recipe',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          StarRate(),
          Row(
            spacing: 10.w,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/chief.png'),
              Text(
                'By James Milner',
                style: Styles.textStyle12.copyWith(color: Colors.grey),
              ),

              Icon(Icons.access_time, size: 16.sp, color: Colors.grey),
              Text(
                '50 min',
                style: Styles.textStyle12.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
