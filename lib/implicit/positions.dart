import 'package:flutter/material.dart';

class Positions extends StatefulWidget {
  const Positions({Key? key}) : super(key: key);

  @override
  State<Positions> createState() => _PositionsState();
}

class _PositionsState extends State<Positions> {
  bool hide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Center(
            child: Text(
              "Hi animated positions",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          AnimatedPositioned(
            top: hide ? 300 : 100,
            left: 90.0,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOutExpo,
            child: AnimatedPadding(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOutExpo,
              padding: EdgeInsets.all(hide ? 0 : 30),
              child: Container(
                width: 250,
                height: 150,
                color: Colors.teal,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.flip),
        onPressed: () {
          setState(() {
            hide = !hide;
          });
        },
      ),
    );
  }
}
