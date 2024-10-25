import 'package:flutter/material.dart';

class FadePageRoute extends PageRouteBuilder {
  final WidgetBuilder builder;
  final AlignmentGeometry align;
  final Duration duration;
  final Color? transitionColor;

  FadePageRoute(
      {required this.builder,
      this.align = Alignment.center,
      this.duration = const Duration(seconds: 1),
      this.transitionColor})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              builder(context),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Align(
              alignment: align,
              child: FadeTransition(opacity: animation, child: child),
            );
          },
          transitionDuration: duration,
          barrierColor: transitionColor,
        );
}
