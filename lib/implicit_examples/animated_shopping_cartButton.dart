import 'package:flutter/material.dart';

class AnimatedShoppingCartbutton extends StatefulWidget {
  AnimatedShoppingCartbutton({super.key});

  @override
  State<AnimatedShoppingCartbutton> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AnimatedShoppingCartbutton> {
  bool isExpended = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: 50,
        width: isExpended ? 200 : 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            color: isExpended ? Colors.red : Colors.blueAccent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isExpended = !isExpended;
                  });
                },
                icon: isExpended
                    ? Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 25,
                      )
                    : Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 25,
                      )),
            if (isExpended)
              AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: isExpended ? 1 : 0,
                child: Text(
                  "add to cart ",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )
          ],
        ),
      ),
    );
  }
}
