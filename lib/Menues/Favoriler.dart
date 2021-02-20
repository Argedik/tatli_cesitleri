import 'package:flutter/material.dart';

class Favoriler extends StatefulWidget {
  @override
  _FavorilerState createState() => _FavorilerState();
}

class _FavorilerState extends State<Favoriler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Text(
        "Toplum",
        style: TextStyle(
            fontSize: 35, fontWeight: FontWeight.bold, color: Colors.yellow),
      ),
    );
  }
}
