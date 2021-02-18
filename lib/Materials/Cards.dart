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
}
