import 'package:flutter/material.dart';

class ModelBarrier extends StatefulWidget {
  const ModelBarrier({Key? key}) : super(key: key);

  @override
  State<ModelBarrier> createState() => _ModelBarrierState();
}

class _ModelBarrierState extends State<ModelBarrier>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> animation;
  late Widget modelBarrier;
  bool pressed = false;

  @override
  initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    animation = ColorTween(
            begin: Colors.orangeAccent.withOpacity(0.5),
            end: Colors.blueGrey.withOpacity(0.5))
        .animate(controller);

    modelBarrier = AnimatedModalBarrier(
      color: animation,
      dismissible: true,
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xBD1A253D),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  pressed = true;
                });
                controller.reset();
                controller.forward();
                Future.delayed(const Duration(seconds: 3), () {
                  setState(() {
                    pressed = false;
                  });
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent),
              child: const Text("Pressed"),
            ),
            if (pressed) SizedBox(width: 200, height: 150, child: modelBarrier),
          ],
        ),
      ),
    );
  }
}
