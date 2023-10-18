import 'package:animation/implicit/animated_align_tom_jerry.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedAlignTomJerry()));
                },
                child: const Text("Animated align Tom Jerry"))
          ],
        ),
      ),
    );
  }
}
