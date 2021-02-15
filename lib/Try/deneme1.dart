import 'package:flutter/material.dart';

class Deneme1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: TextButton(
            onPressed: () {},
            //style: ButtonStyle,
            child: Text(
              "Deneme",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> categories = ["elma", "armut", "kayısı", "portakal", "ayva"];
