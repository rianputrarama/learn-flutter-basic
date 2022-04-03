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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.call,
                          size: 30,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Call",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.navigation,
                          size: 30,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Route",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          size: 30,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    )
                  ],
                ),
                // color: Colors.lightGreen,
                // child: Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text("Hello, World!"),
                //     Text("Hello, World!"),
                //     Text("Hello, World!"),
                //     Row(
                //       children: [
                //         Text("Hello, Razka"),
                //         Text("Hello, Razka"),
                //         Text("Hello, Razka")
                //       ],
                //     )
                //   ],
                // ),
              ),
            ],
          ),
        )
        // body: Container(
        //   margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //   padding: EdgeInsets.all(20.0),
        //   color: Colors.indigo,
        //   child: Icon(
        //     Icons.headset,
        //     color: Colors.white,
        //     size: 100.0,
        //   ),
        // ),
        );
  }
}
