import 'package:flutter/material.dart';

class PhysicalModelWidget extends StatefulWidget {
  const PhysicalModelWidget({Key? key}) : super(key: key);

  @override
  State<PhysicalModelWidget> createState() => _PhysicalModelWidgetState();
}

class _PhysicalModelWidgetState extends State<PhysicalModelWidget> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedPhysicalModel(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            elevation: _isFlat ? 0 : 6.0,
            shape: BoxShape.rectangle,
            shadowColor: Colors.black,
            color: Colors.white,
            child: const SizedBox(
              height: 120.0,
              width: 120.0,
              child: Icon(Icons.android_outlined),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
              child: const Text("click"))
        ],
      ),
    ));
  }
}
