import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  const PositionedTransitionExample({super.key});

  @override
  State<PositionedTransitionExample> createState() =>
      _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState
    extends State<PositionedTransitionExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<RelativeRect> jerryRect;
  late final Animation<RelativeRect> tomRect;
  late final Animation<RelativeRect> spikeRect;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    jerryRect = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(300, 300, 0, 0))
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.easeOut));

    tomRect = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(150, 150, 0, 0))
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.easeOut));

    spikeRect = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(50, 50, 0, 0))
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void start() {
    // animationController.reset();
    animationController.forward();
  }

  void reverse() {
    animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Positioned Transition Examlpe"),
        ),
        body: Stack(
          children: [
            PositionedTransition(
                rect: spikeRect,
                child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blueGrey,
                    child: Image.asset('assets/dog.png'))),
            PositionedTransition(
                rect: tomRect,
                child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.lightBlueAccent,
                    child: Image.asset('assets/tom.png'))),
            PositionedTransition(
                rect: jerryRect,
                child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                    child: Image.asset('assets/jerry.png'))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: start, icon: const Icon(Icons.play_arrow)),
                  IconButton(
                      onPressed: reverse, icon: const Icon(Icons.restart_alt))
                ],
              ),
            )
          ],
        ));
  }
}
