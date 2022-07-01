import 'package:flutter/material.dart';

class CustomExplicit extends StatefulWidget {
  const CustomExplicit({Key? key}) : super(key: key);

  @override
  State<CustomExplicit> createState() => _CustomExplicitState();
}

class _CustomExplicitState extends State<CustomExplicit>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Size> animation;

  @override
  initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<Size>(
            begin: const Size(20, 200), end: const Size(20, 600))
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInBack));

    // not necessary because using Animated builder
    controller.addListener(() {
      setState(() {});
    });
  }

  double height = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedBuilder(
                animation: controller,
                builder: (context, child) => FlutterLogo(
                  size: animation.value.height,
                ),
              ),
              ListTile(
                title: const Text("Scale up"),
                tileColor: Colors.teal,
                onTap: () {
                  controller.forward();
                },
              ),
              ListTile(
                title: const Text("Scale down"),
                tileColor: Colors.teal,
                onTap: () {
                  controller.reverse();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
