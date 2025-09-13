import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer({super.key});

  @override
  _CustomAnimatedContainerState createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  double width = 100;
  double height = 100;

  @override
  Widget build(BuildContext context) {
    bool isBig = width > 150 || height > 150;
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            width = width == 100 ? 200 : 100;
            height = height == 100 ? 200 : 100;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: isBig ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text("Change", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
