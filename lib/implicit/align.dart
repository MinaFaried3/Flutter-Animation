import 'package:flutter/material.dart';

class AnimatedAlignmentWidget extends StatefulWidget {
  const AnimatedAlignmentWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignmentWidget> createState() =>
      _AnimatedAlignmentWidgetState();
}

class _AnimatedAlignmentWidgetState extends State<AnimatedAlignmentWidget> {
  double dx = 0;
  double dy = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.tealAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
          child: AnimatedAlign(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOutExpo,
            // alignment is like x,y system but negative in y is up
            alignment: Alignment(dx, dy),
            // FractionalOffset is like y,x system
            // alignment: FractionalOffset(0, 0.3),
            child: FlutterLogo(
              size: 40,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.flip),
        onPressed: () {
          setState(() {
            dx = dx == 0 ? 1 : 0;
            dy = dy == 0 ? 1 : 0;
          });
        },
      ),
    );
  }
}
