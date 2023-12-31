import 'package:flutter/material.dart';

class PageSlideTransition extends PageRouteBuilder {
  final dynamic page;

  PageSlideTransition(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var curve = Curves.bounceInOut; // Replace with your desired curve
              var curvedAnimation =
                  CurvedAnimation(parent: animation, curve: curve);

              var tween =
                  Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero);
              var offsetAnimation = curvedAnimation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            });
}
