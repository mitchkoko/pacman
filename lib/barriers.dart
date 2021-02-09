import 'package:flutter/material.dart';

class MyBarrier extends StatelessWidget {
  final innerColor;
  final outerColor;
  final child;

  MyBarrier({this.innerColor, this.outerColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          padding: EdgeInsets.all(5),
          color: outerColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: innerColor,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
