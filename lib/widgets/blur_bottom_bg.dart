import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBottomBackground extends StatelessWidget {
  Widget child;
  BlurBottomBackground({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        height: 100,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.bottomCenter,
            child: child,
          ),
        ),
      ),
    );
  }
}
