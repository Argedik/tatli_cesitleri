/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';*/
import 'package:flutter/material.dart';
//import 'package:charts_flutter/flutter.dart' as charts;

class Card123 {
  final String image, title, description;
  final int prize, size, id;
  final Color color;
  List<Color> deneme = [Colors.black, Colors.white];
  Card123({
    this.deneme,
    this.id,
    this.image,
    this.title,
    this.prize,
    this.description,
    this.size,
    this.color,
  });
}

/*List<Card> cards = [
  Card(
    deneme: [Colors.yellow],
    id: 1,
    title: "Deneme1",
    prize: 123,
    size: 12,
    description: dummyText,
    image: "assets/Materials/Argedik_logo.png",
    color: Color(0xFFAEAEAE),
  ),
];*/
String dummyText =
    "Bir köprü varmış. Köprüyü geçen köyü görebiliyormuş. Cümleyi uzatmak için örnek kelimeler yazıyorum.";

Widget orangeCard(int sayi) {
  //final db = FirebaseFirestore.instance;
  //charts.Color.fromHex(code: '#f2f2f2');
  //void resimGetir() async {
  //  await Firebase.initializeApp();
  //}

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

  /* Card buildCard(String item) {
    return Card(
      color: Colors.blue,
      elevation: 0,
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
  }*/

  if (sayi == 1) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 13.0),
      height: 180,
      width: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38.0),
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
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 3,
          ),
          Image.asset(
            'assets/Tatlilar/Asure.jpg',
            height: 97,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Aşure',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xfcd32626),
              shadows: [
                Shadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                )
              ],
            ),
          ),
        ],
      ),
    );
  } else if (sayi == 2) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 13.0),
      height: 180,
      width: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38.0),
        gradient: LinearGradient(
          begin: Alignment(0.95, -1.0),
          end: Alignment(-1.0, 1.0),
          stops: [0.0, 0.197, 0.678, 1.0],
          colors: renk2,
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
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 3,
          ),
          Image.asset(
            'assets/Tatlilar/Sutlac.jpg',
            height: 97,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Sütlaç',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xfff5a31a),
              shadows: [
                Shadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                )
              ],
            ),
          ),
        ],
      ),
    );
  } else if (sayi == 3) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 13.0),
      height: 180,
      width: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38.0),
        gradient: LinearGradient(
          begin: Alignment(0.95, -1.0),
          end: Alignment(-1.0, 1.0),
          stops: [0.0, 0.197, 0.678, 1.0],
          colors: renk3,
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
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 3,
          ),
          Image.asset(
            'assets/Tatlilar/Asure.jpg',
            height: 97,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Aşure',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xfcd32626),
              shadows: [
                Shadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                )
              ],
            ),
          ),
        ],
      ),
    );
  } else if (sayi == 4) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 13.0),
      height: 180,
      width: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38.0),
        gradient: LinearGradient(
          begin: Alignment(0.95, -1.0),
          end: Alignment(-1.0, 1.0),
          stops: [0.0, 0.197, 0.678, 1.0],
          colors: renk4,
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
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 3,
          ),
          Image.asset(
            'assets/Tatlilar/Asure.jpg',
            height: 97,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Aşure',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xfcd32626),
              shadows: [
                Shadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                )
              ],
            ),
          ),
        ],
      ),
    );
  } else if (sayi == 5) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 13.0),
      height: 180,
      width: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38.0),
        gradient: LinearGradient(
          begin: Alignment(0.95, -1.0),
          end: Alignment(-1.0, 1.0),
          stops: [0.0, 0.197, 0.678, 1.0],
          colors: renk5,
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
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 3,
          ),
          Image.asset(
            'assets/Tatlilar/Asure.jpg',
            height: 97,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Aşure',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xfcd32626),
              shadows: [
                Shadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                )
              ],
            ),
          ),
        ],
      ),
    );
  } else if (sayi == 6) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 13.0),
      height: 180,
      width: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38.0),
        gradient: LinearGradient(
          begin: Alignment(0.95, -1.0),
          end: Alignment(-1.0, 1.0),
          stops: [0.0, 0.197, 0.678, 1.0],
          colors: renk6,
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
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 3,
          ),
          Image.asset(
            'assets/Tatlilar/Asure.jpg',
            height: 97,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Aşure',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xfcd32626),
              shadows: [
                Shadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
