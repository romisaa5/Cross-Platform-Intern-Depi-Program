import 'package:flutter/material.dart';
import 'package:project1/widgets/animated_container.dart';
import 'package:project1/widgets/custom_animated_cross_fade.dart';
import 'package:project1/widgets/custom_animated_opicity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            CustomAnimatedContainer(),
            CustomAnimatedCrossFade(),
            CustomAnimatedOpacity(),
          ],
        ),
      ),
    );
  }
}
