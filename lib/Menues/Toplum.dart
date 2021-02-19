import 'package:flutter/material.dart';

class Toplum extends StatefulWidget {
  @override
  _ToplumState createState() => _ToplumState();
}

class _ToplumState extends State<Toplum> {
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
