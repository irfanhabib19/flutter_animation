import 'package:flutter/material.dart';

class SplashAnimation extends StatefulWidget {
  SplashAnimation({super.key});

  @override
  State<SplashAnimation> createState() => SplashAnimationState();
}

class SplashAnimationState extends State<SplashAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> ScaleAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    ScaleAnimation = Tween<double>(begin: 1, end: 20).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.forward();
      },
      child: Center(
        child: ScaleTransition(
          scale: ScaleAnimation,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ),
    );
  }
}

class destination extends StatelessWidget {
  destination({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Splash Screen"),
      ),
      body: Container(
        color: Colors.greenAccent,
      ),
    );
  }
}
