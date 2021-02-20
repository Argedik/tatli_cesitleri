import 'package:flutter/material.dart';

class FavoriKategorileri extends StatefulWidget {
  final String kategori;

  const FavoriKategorileri({Key key, this.kategori}) : super(key: key);

  @override
  _FavoriKategorileriState createState() => _FavoriKategorileriState();
}

class _FavoriKategorileriState extends State<FavoriKategorileri> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.kategori,
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.orangeAccent),
    );
  }
}
