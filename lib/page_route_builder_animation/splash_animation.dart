import 'package:flutter/material.dart';

class SplashAnimation extends StatefulWidget {
  SplashAnimation({super.key});

  @override
  State<SplashAnimation> createState() => SplashAnimationState();
}

class SplashAnimationState extends State<SplashAnimation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => destination()));
      },
      child: Center(
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepOrange,
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
