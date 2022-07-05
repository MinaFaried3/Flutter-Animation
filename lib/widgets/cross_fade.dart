import 'package:flutter/material.dart';

class CrossFade extends StatefulWidget {
  const CrossFade({Key? key}) : super(key: key);

  @override
  State<CrossFade> createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {
  bool visible = true;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 1),
          firstChild: Image.asset(
            "assets/tree.jpg",
            width: double.infinity,
          ),
          secondChild: Image.network(
            "https://i.pcmag.com/imagery/articles/00Cx7vFIetxCuKxQeqPf8mi-23..v1643131202.jpg",
            width: double.infinity,
          ),
          crossFadeState:
              visible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow_outlined),
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
      ),
    );
  }
}
