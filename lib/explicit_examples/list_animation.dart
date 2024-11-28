import 'package:flutter/material.dart';

class ListAnimation extends StatefulWidget {
  const ListAnimation({super.key});

  @override
  State<ListAnimation> createState() => _listAnimationState();
}

class _listAnimationState extends State<ListAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  List<Animation<Offset>> _animation = [];
  final itemCount = 4;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _animation = List.generate(
        itemCount,
        (index) => Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(CurvedAnimation(
                parent: controller,
                curve: Interval(
                    index * (1 / itemCount), 1)))); // Start the animation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return SlideTransition(
              position: _animation[index],
              child: ListTile(
                title: Text("hello ,Irfan . ${index.toString()}"),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller.isCompleted) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
