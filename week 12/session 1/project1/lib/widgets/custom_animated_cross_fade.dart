import 'package:flutter/material.dart';

class CustomAnimatedCrossFade extends StatefulWidget {
  const CustomAnimatedCrossFade({super.key});

  @override
  _CustomAnimatedCrossFadeState createState() =>
      _CustomAnimatedCrossFadeState();
}

class _CustomAnimatedCrossFadeState extends State<CustomAnimatedCrossFade> {
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedCrossFade(
        duration: Duration(milliseconds: 500),
        crossFadeState: isBig
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        firstCurve: Curves.bounceOut,
        secondCurve: Curves.easeInExpo,
        firstChild: GestureDetector(
          onTap: () {
            setState(() {
              isBig = true;
            });
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text(
                "Small",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
        secondChild: GestureDetector(
          onTap: () {
            setState(() {
              isBig = false;
            });
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: Center(
              child: Text(
                "Big",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
