import 'package:flutter/material.dart';

class FadeWidget extends StatelessWidget {
  const FadeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: FadeInImage(
            placeholder: AssetImage("assets/tree.jpg"),
            image: NetworkImage(
                "https://i.pcmag.com/imagery/articles/00Cx7vFIetxCuKxQeqPf8mi-23..v1643131202.jpg"),
          ),
        ),
      ),
    );
  }
}
