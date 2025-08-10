import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:session1/theme/text_styles.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.white,
            child: Image.asset(
              'assets/images/Image.png',
              width: 100.w,
              height: 100.w,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Food Recipe',
            style: Styles.textStyle14.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Time',
              style: Styles.textStyle12.copyWith(color: Colors.black54),
            ),
            subtitle: Text(
              '30 minutes',
              style: Styles.textStyle12.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(Icons.timer, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
