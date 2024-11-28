import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_animations/explicit_examples/list_animation.dart';
import 'package:flutter_animations/explicit_examples/loading_animation.dart';
import 'package:flutter_animations/explicit_examples/login_animation.dart';
import 'package:flutter_animations/implicit_examples/animated_color_palletes.dart';
import 'package:flutter_animations/implicit_examples/animated_shopping_cartButton.dart';
import 'package:flutter_animations/implicit_examples/animated_tween_animation.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Color Palette Generator",
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 243, 104, 122),
        ),
        body: Container(
            child: LoadingAnimation(
          color: Colors.green,
          progress: 45,
        )
            //ListAnimation()
            //LoginAnimation()
            //AnimatedTweenAnimation()
            //AnimatedShoppingCartbutton(),
            // AnimatedColorPalette(),
            ));
  }
}
