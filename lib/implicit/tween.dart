import 'dart:math';

import 'package:flutter/material.dart';

class TweenWidget extends StatefulWidget {
  const TweenWidget({Key? key}) : super(key: key);

  @override
  State<TweenWidget> createState() => _TweenWidgetState();
}

class _TweenWidgetState extends State<TweenWidget> {
  double angle = 0;
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: angle),
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.teal,
                ),
                builder: (_, angle, child) {
                  return Transform.rotate(
                    angle: angle,
                    child: child,
                  );
                },
              ),
              Text("${(angle * (180 / pi)).round()}"),
              Slider(
                value: value,
                min: 0,
                max: pi * 2,
                onChanged: (val) {
                  setState(() {
                    angle = val;
                    value = val;
                  });
                },
                divisions: 4,
                activeColor: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
