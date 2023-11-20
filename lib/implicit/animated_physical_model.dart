import 'package:flutter/material.dart';

class AnimatedPhysicalModelJerry extends StatefulWidget {
  const AnimatedPhysicalModelJerry({super.key});

  @override
  State<AnimatedPhysicalModelJerry> createState() =>
      _AnimatedPhysicalModelJerryState();
}

class _AnimatedPhysicalModelJerryState
    extends State<AnimatedPhysicalModelJerry> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AnimatedPhysicalModel(
            shape: BoxShape.circle,
            elevation: _isPressed ? 56 : 0,
            color: Colors.transparent,
            duration: const Duration(milliseconds: 500),
            shadowColor: Colors.blueGrey,
            curve: Curves.easeInOut,
            child: Image.asset('assets/jerry.png'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isPressed = !_isPressed;
          });
        },
        child: const Icon(Icons.not_started_outlined),
      ),
    );
  }
}
