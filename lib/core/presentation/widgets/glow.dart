import 'dart:ui';
import 'package:flutter/material.dart';

class Glow extends StatelessWidget {
  final Widget child;
  final double blurStrength;
  final double glowOffset;
  final double opacity;
  final double scale;

  const Glow({
    super.key,
    required this.child,
    this.blurStrength = 40.0,
    this.glowOffset = 20.0,
    this.opacity = 0.5,
    this.scale = 0.90,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.translate(
          offset: Offset(0, glowOffset),
          child: Transform.scale(
            scale: scale,
            child: Opacity(
              opacity: opacity,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: blurStrength,
                  sigmaY: blurStrength,
                  tileMode: TileMode.decal,
                ),

                child: child,
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
