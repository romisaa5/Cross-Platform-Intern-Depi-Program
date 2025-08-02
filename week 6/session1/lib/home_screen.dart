import 'package:flutter/material.dart';
import 'package:session1/food_recipe_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food Recipe')),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        itemBuilder: (context, index) => FoodRecipeCard(),
      ),
    );
  }
}
