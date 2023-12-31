import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveSilderExample extends StatefulWidget {
  const RiveSilderExample({super.key});

  @override
  State<RiveSilderExample> createState() => _RiveSilderExampleState();
}

class _RiveSilderExampleState extends State<RiveSilderExample> {
  late final List<Artboard> _animationArtboard = [];
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
    // rootBundle.load('assets/rive/bear.riv').then((value) {
    //   final file = RiveFile.import(value);
    //   final artBoard = file.mainArtboard;
    //   _animationArtboard.add(artBoard);
    // });
    // rootBundle.load('assets/rive/girl.riv').then((value) {
    //   final file = RiveFile.import(value);
    //   final artBoard = file.mainArtboard;
    //   _animationArtboard.add(artBoard);
    // });
    // rootBundle.load('assets/rive/rating.riv').then((value) {
    //   final file = RiveFile.import(value);
    //   final artBoard = file.mainArtboard;
    //   _animationArtboard.add(artBoard);
    // });
  }

  @override
  void dispose() {
    _stopAnimation();
    super.dispose();
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      if (_currentPage == _animationArtboard.length - 1) {
        // reset to the first page when the last page is reached
        _pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500), curve: Curves.linear);
      } else {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 500), curve: Curves.linear);
      }
      _startAnimation();
    });
  }

  void _stopAnimation() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rive Silder Example"),
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        itemCount: _animationArtboard.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
              child: Rive(
            artboard: _animationArtboard[index],
          ));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPage,
          onTap: (int page) {
            _pageController.animateToPage(page,
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.animation_outlined), label: "Animation 1"),
            BottomNavigationBarItem(
                icon: Icon(Icons.brightness_medium), label: "Animation 2"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: "Animation 3")
          ]),
    );
  }
}
