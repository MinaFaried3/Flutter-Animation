import 'package:flutter/material.dart';

class TweenExplicit extends StatefulWidget {
  const TweenExplicit({Key? key}) : super(key: key);

  @override
  State<TweenExplicit> createState() => _TweenExplicitState();
}

class _TweenExplicitState extends State<TweenExplicit>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<AlignmentGeometry> animation;

  @override
  initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true);

    // we use DecorationTween,TextStyleTween
    animation = Tween<AlignmentGeometry>(
            begin: Alignment.center, end: Alignment.bottomRight)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
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
        child: AlignTransition(
          alignment: animation,
          child: const FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
