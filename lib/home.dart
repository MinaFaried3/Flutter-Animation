import 'package:animation/implicit/AnimatedCrossFadeExample.dart';
import 'package:animation/implicit/AnimatedListExample.dart';
import 'package:animation/implicit/AnimatedOpacityExample.dart';
import 'package:animation/implicit/AnimatedPaddingExample.dart';
import 'package:animation/implicit/AnimatedPositioned.dart';
import 'package:animation/implicit/AnimatedPositionedDirectional.dart';
import 'package:animation/implicit/AnimatedSwitcherExample.dart';
import 'package:animation/implicit/AnimatedTextStyle.dart';
import 'package:animation/implicit/animated_align_tom_jerry.dart';
import 'package:animation/implicit/animated_physical_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AnimatedAlignTomJerry()));
                },
                child: const Text("Animated align Tom Jerry")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const AnimatedPhysicalModelJerry()));
                },
                child: const Text("Animated Physical Model")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedTextSizeExample()));
                },
                child: const Text("Animated TextSize Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedOpacityExample()));
                },
                child: const Text("Animated Opacity Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedPAddingExample()));
                },
                child: const Text("Animated PAdding Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedPositionedExample()));
                },
                child: const Text("Animated Position Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedPositionedDirectionalExample()));
                },
                child: const Text("Animated Positioned Directional Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedCrossFadeExample()));
                },
                child: const Text("Animated Cross Fade Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedSwitcherExample()));
                },
                child: const Text("Animated Switcher Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimatedListExample()));
                },
                child: const Text("Animated List Example")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //               const PositionedTransitionExamlpe()));
            //     },
            //     child: const Text("Positioned Transition Examlpe")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const SizeTransitionExample()));
            //     },
            //     child: const Text("Size Transition Example")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //               const RotationTransitionExample()));
            //     },
            //     child: const Text("Rotation Transition Example")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //               const AnimatedBuilderExample()));
            //     },
            //     child: const Text("Animated Builde rExample")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const FadeTransitionExample()));
            //     },
            //     child: const Text("Fade Transition Example")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //               const PositionedDirectionalTransitionExample()));
            //     },
            //     child: const Text("Positioned Directional Transition Example")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //               const TweenAnimationBuilderExample()));
            //     },
            //     child: const Text("Tween Animation Builder Example")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //               const DefaultTextStyleTransitionExample()));
            //     },
            //     child: const Text("Default TextStyle Transition Example")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //               const IndexedStackTransitionExample()));
            //     },
            //     child: const Text("Indexed Stack Transition Example")),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(PageFadeTransition(const PageTwo()));
            //     },
            //     child: const Text(
            //       "Page Fade Transition",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(PageScaleTransition(const PageTwo()));
            //     },
            //     child: const Text(
            //       "Page Scale Transition",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(PageRotateTransition(const PageTwo()));
            //     },
            //     child: const Text(
            //       "Page Rotate Transition",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(PageSlideTransition(const PageTwo()));
            //     },
            //     child: const Text(
            //       "Page Slide Transition",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(PageSizeTransition(const PageTwo()));
            //     },
            //     child: const Text(
            //       "Page Size Transition",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(PageMixSizeFadeTransition(const PageTwo()));
            //     },
            //     child: const Text(
            //       "Page Mix Size Fade Transition",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(PageMixScaleRotateTransition(const PageTwo()));
            //     },
            //     child: const Text(
            //       "Page Mix Scale Rotate Transition",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const CustomePainterExmaple()));
            //     },
            //     child: const Text(
            //       "Custome Painter Exmaple",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const LottieSilderExample()));
            //     },
            //     child: const Text(
            //       "Lottie Silder Example",
            //       style: TextStyle(color: Colors.white),
            //     )),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const RiveSilderExample()));
            //     },
            //     child: const Text(
            //       "Rive Silder Example",
            //       style: TextStyle(color: Colors.white),
            //     )),
          ],
        ),
      ),
    );
  }
}
