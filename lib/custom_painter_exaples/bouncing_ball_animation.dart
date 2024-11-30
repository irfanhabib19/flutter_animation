import 'package:flutter/material.dart';

class BouncingBallAnimation extends StatefulWidget {
  const BouncingBallAnimation({super.key});

  @override
  State<BouncingBallAnimation> createState() => _BouncingBallState();
}

class _BouncingBallState extends State<BouncingBallAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
    animation.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        }
      },
    );
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        AnimatedBuilder(
          animation: animation,
          builder: (context, child) => CustomPaint(
            size: const Size(200, 200),
            painter: BouncingBall(animation.value),
          ),
        ),
      ],
    ));
  }
}

class BouncingBall extends CustomPainter {
  final double animationValue;
  BouncingBall(this.animationValue) {
    print(animationValue);
  }
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
        Offset(size.width / 2, size.height - (size.height * animationValue)),
        20,
        Paint()..color = Colors.greenAccent);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
