import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginAnimation extends StatefulWidget {
  LoginAnimation({super.key});

  @override
  State<LoginAnimation> createState() => _loginanimationState();
}

class _loginanimationState extends State<LoginAnimation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 50,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(labelText: "User name"),
              ),
              SizedBox(
                height: 7,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Password"),
              ),
              SizedBox(
                height: 3,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Log in"))
            ],
          ),
        ),
      ),
    );
  }
}
