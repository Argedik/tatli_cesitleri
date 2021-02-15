import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Materials/Cards.dart';
import 'package:tatli_cesitleri/Try/deneme1.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> _fayanslar = [
    'assets/Tatlilar/Asure.jpg',
    'assets/Tatlilar/Dondurma.jpg',
    'assets/Tatlilar/Firinda_Sutlac.jpg',
    'assets/Tatlilar/Güllac.jpg',
    'assets/Tatlilar/Kadayif.jpg',
    'assets/Tatlilar/Macun_Sekeri.jpg',
    'assets/Tatlilar/Revani.jpg',
    'assets/Tatlilar/SekerPare.jpg',
    'assets/Tatlilar/Sutlac.jpg',
    'assets/Tatlilar/Sutlu_Nuriye.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          color: Colors.yellow,
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 17.0,
                  crossAxisSpacing: 20.0,
                  padding: EdgeInsets.all(10.0),
                  childAspectRatio: (137 / 180),
                  children: _fayanslar
                      .map(
                        (item) => buildCard(item),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildCard(String item) {
    List<Color> renk1 = [
      Color(0xfff5a31a),
      Color(0xffedf4f2),
      Color(0xffedf4f2),
      Color(0xfff5a31a)
    ];
    List<Color> renk2 = [
      Color(0xffD32626),
      Color(0xffedf4f2),
      Color(0xffedf4f2),
      Color(0xffD32626)
    ];
    List<Color> renk3 = [
      Color(0xff79D70F),
      Color(0xffedf4f2),
      Color(0xffedf4f2),
      Color(0xff79D70F)
    ];
    List<Color> renk4 = [
      Color(0xff53D1FF),
      Color(0xffedf4f2),
      Color(0xffedf4f2),
      Color(0xff53D1FF)
    ];
    List<Color> renk5 = [
      Color(0xff11698E),
      Color(0xffedf4f2),
      Color(0xffedf4f2),
      Color(0xff11698E)
    ];
    List<Color> renk6 = [
      Color(0xffFFFF00),
      Color(0xffedf4f2),
      Color(0xffedf4f2),
      Color(0xffFFFF00)
    ];

    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.only(left: 9.0, right: 9.0, top: 6.0),
      height: 180,
      width: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(44.0),
        gradient: LinearGradient(
          begin: Alignment(0.95, -1.0),
          end: Alignment(-1.0, 1.0),
          stops: [0.0, 0.197, 0.678, 1.0],
          colors: renk1,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0, 8),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 8),
                      blurRadius: 6,
                    ),
                  ],
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(item),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "AŞURE",
              style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
            ),
          ),
        ],
      ),
    );
  }
}
