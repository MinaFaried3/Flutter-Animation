import 'package:flutter/material.dart';

class MainHero extends StatelessWidget {
  const MainHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Hero(
            tag: "flutter",
            child: FlutterLogo(),
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HeroScreen()));
          },
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class HeroScreen extends StatelessWidget {
  const HeroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Hero(
          tag: "flutter",
          child: FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}
