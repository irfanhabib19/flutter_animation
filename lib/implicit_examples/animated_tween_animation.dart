import 'package:flutter/material.dart';

class AnimatedTweenAnimation extends StatefulWidget {
  AnimatedTweenAnimation({super.key});

  @override
  State<AnimatedTweenAnimation> createState() => _animatedTween();
}

class _animatedTween extends State<AnimatedTweenAnimation> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 200),
        duration: Duration(seconds: 5),
        builder: (context, size, Widget) {
          return Container(
            height: size,
            width: size,
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
          );
        },
      ),
    );
  }
}
