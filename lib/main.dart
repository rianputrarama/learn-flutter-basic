import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Learn Flutter",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            Icon(Icons.account_circle),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconWithLabel(
                      icon: Icons.call,
                      text: "Call",
                      iconColor: Colors.red,
                      textColor: Colors.lightGreen,
                    ),
                    IconWithLabel(
                      icon: Icons.navigation,
                      text: "Route",
                      iconColor: Colors.blue,
                      textColor: Colors.red,
                    ),
                    IconWithLabel(
                      icon: Icons.share,
                      text: "Share",
                      iconColor: Colors.green,
                      textColor: Colors.purpleAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class IconWithLabel extends StatelessWidget {
  // constractor
  const IconWithLabel({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.textColor,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
          color: iconColor,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ],
    );
  }
}
