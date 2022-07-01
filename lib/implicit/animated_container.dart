import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double width = 50;
  double height = 100;
  Color color = Colors.cyanAccent;
  double radius = 10;
  bool visible = true;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(seconds: 3),
          opacity: visible ? 1 : 0,
          curve: Curves.easeInOutExpo,
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOutExpo,
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: color,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow_outlined),
        onPressed: () {
          setState(() {
            var random = Random();
            visible = !visible;
            width = random.nextInt(150).toDouble();
            height = random.nextInt(150).toDouble();
            color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1);
            radius = random.nextInt(100).toDouble();
          });
        },
      ),
    );
  }
}
