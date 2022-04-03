import 'package:flutter/material.dart';
import 'package:kopi_pait/widgets/icon_with_label.dart';

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
            //mainAxisAlignment: MainAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Go To Dashboard",
                    style: TextStyle(
                      // set white color text
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    // change background button
                    primary: Colors.blueAccent,
                    // change splash button color
                    onPrimary: Colors.blue[700],
                    shadowColor: Colors.black,
                  ),
                ),
              ),
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
