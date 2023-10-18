import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedAlignTomJerry extends StatefulWidget {
  const AnimatedAlignTomJerry({super.key});

  @override
  State<AnimatedAlignTomJerry> createState() => _AnimatedAlignTomJerryState();
}

class _AnimatedAlignTomJerryState extends State<AnimatedAlignTomJerry> {
  List<Alignment> alignments = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
  ];

  int jerryPosition = 0;
  int tomPosition = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: alignments[jerryPosition],
              duration: const Duration(milliseconds: 500),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.transparent,
                child: Image.asset('assets/jerry.png'),
              ),
            ),
            AnimatedAlign(
              alignment: alignments[tomPosition],
              duration: const Duration(milliseconds: 500),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.transparent,
                child: Image.asset('assets/tom.png'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.not_started_outlined),
        onPressed: () {
          setState(() {
            getNextAlignment();
          });
        },
      ),
    );
  }

  void getNextAlignment() {
    tomPosition = jerryPosition;
    while (jerryPosition == tomPosition) {
      jerryPosition = Random().nextInt(9);
    }
  }
}
