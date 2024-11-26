import 'package:flutter/material.dart';

class AnimatedTweenAnimation extends StatefulWidget {
  AnimatedTweenAnimation({super.key});

  @override
  State<AnimatedTweenAnimation> createState() => _animatedTween();
}

class _animatedTween extends State<AnimatedTweenAnimation> {
  final double size = 200;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.5),
                blurRadius: size,
                spreadRadius: size / 2,
              )
            ]),
      ),
    );
  }
}
