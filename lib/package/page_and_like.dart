import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:page_transition/page_transition.dart';

class PageWidget extends StatefulWidget {
  const PageWidget({Key? key}) : super(key: key);

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(PageTransition(
                        child: const Page2(),
                        type: PageTransitionType.rotate,
                        alignment: Alignment.centerLeft,
                        duration: const Duration(seconds: 2)));
                  },
                  child: const Text("Page Transition")),
              const LikeButton(
                size: 60,
                likeCount: 108,
                bubblesColor: BubblesColor(
                    dotPrimaryColor: Colors.pink,
                    dotSecondaryColor: Colors.pinkAccent),
                circleColor:
                    CircleColor(start: Colors.deepPurple, end: Colors.purple),
                likeBuilder: changeIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget? changeIcon(bool isLike) {
  return Icon(
    Icons.cabin_outlined,
    size: 40,
    color: isLike ? Colors.pink : Colors.black26,
  );
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}
