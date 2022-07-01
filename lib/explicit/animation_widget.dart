import 'package:flutter/material.dart';

class AnimationCustomWidget extends StatefulWidget {
  const AnimationCustomWidget({Key? key}) : super(key: key);

  @override
  State<AnimationCustomWidget> createState() => _AnimationCustomWidgetState();
}

class _AnimationCustomWidgetState extends State<AnimationCustomWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: InkWell(
              onTap: () {
                // controller.forward();
              },
              child: OutLinedButtonTransition(width: controller)),
        ),
      ),
    );
  }
}

class OutLinedButtonTransition extends AnimatedWidget {
  const OutLinedButtonTransition({required Animation<double> width, Key? key})
      : super(listenable: width, key: key);

  Animation<double> get width => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: Colors.blueAccent, width: width.value * 20)),
      child: const Text(
        "Click Me!",
        style: TextStyle(),
      ),
    );
  }
}
