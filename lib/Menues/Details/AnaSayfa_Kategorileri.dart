import 'package:flutter/material.dart';

class AnaSayfaKategorileri extends StatefulWidget {
  final String kategori;

  const AnaSayfaKategorileri({Key key, @required this.kategori})
      : super(key: key);

  @override
  _AnaSayfaKategorileriState createState() => _AnaSayfaKategorileriState();
}

class _AnaSayfaKategorileriState extends State<AnaSayfaKategorileri> {
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
