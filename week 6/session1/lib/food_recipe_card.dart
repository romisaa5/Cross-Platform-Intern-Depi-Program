import 'package:flutter/material.dart';
import 'package:session1/star_rate.dart';

class FoodRecipeCard extends StatelessWidget {
  const FoodRecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 30,
          child: Container(
            height: 175,
            width: 150,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              spacing: 10,
              children: [SizedBox(height: 50), Text('Food Recipe'), StarRate()],
            ),
          ),
        ),
        Positioned(
          top: -3,
          left: 40,
          child: CircleAvatar(
            radius: 45,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                'assets/images/food.png',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
