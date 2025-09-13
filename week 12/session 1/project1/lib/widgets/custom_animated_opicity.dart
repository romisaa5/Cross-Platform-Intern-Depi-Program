import 'package:flutter/material.dart';

class CustomAnimatedOpacity extends StatefulWidget {
  @override
  _CustomAnimatedOpacityState createState() => _CustomAnimatedOpacityState();
}

class _CustomAnimatedOpacityState extends State<CustomAnimatedOpacity> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 800),
          curve: Curves.easeInOut,
          opacity: isVisible ? 1.0 : 0.0,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Tap",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
