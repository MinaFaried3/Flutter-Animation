import 'package:flutter/material.dart';

class Trans extends StatefulWidget {
  const Trans({Key? key}) : super(key: key);

  @override
  State<Trans> createState() => _TransState();
}

class _TransState extends State<Trans> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        lowerBound: 0.5,
        upperBound: 1)
      ..repeat(
        reverse: true,
        // min, max refer to lower , upper bound
        // min: 0.5,
      );
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
    );
  }

  @override
  dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScaleTransition(
          scale: animation,
          child: const Center(
            child: FlutterLogo(
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}
