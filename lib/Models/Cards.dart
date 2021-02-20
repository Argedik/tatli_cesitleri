import 'package:flutter/material.dart';

class Kart {
  final String image, title, description;
  final int price, id;
  final Color color;
  final List<Color> kartinRengi;

  List<Color> deneme = [Colors.black, Colors.white];
  Kart({
    this.deneme,
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
    this.kartinRengi,
  });
}

final List<Color> renk1 = [
  Color(0xfff5a31a),
  Color(0xffedf4f2),
  Color(0xffedf4f2),
  Color(0xfff5a31a)
];
final List<Color> renk2 = [
  Color(0xffD32626),
  Color(0xffedf4f2),
  Color(0xffedf4f2),
  Color(0xffD32626)
];
final List<Color> renk3 = [
  Color(0xff79D70F),
  Color(0xffedf4f2),
  Color(0xffedf4f2),
  Color(0xff79D70F)
];
final List<Color> renk4 = [
  Color(0xff53D1FF),
  Color(0xffedf4f2),
  Color(0xffedf4f2),
  Color(0xff53D1FF)
];
final List<Color> renk5 = [
  Color(0xff11698E),
  Color(0xffedf4f2),
  Color(0xffedf4f2),
  Color(0xff11698E)
];
final List<Color> renk6 = [
  Color(0xffFFFF00),
  Color(0xffedf4f2),
  Color(0xffedf4f2),
  Color(0xffFFFF00)
];
final List<List<Color>> _renkler = [
  renk1,
  renk2,
  renk3,
  renk4,
  renk5,
  renk6,
];

List<Kart> kartlar = [
  Kart(
    id: 1,
    title: "sd",
    price: 1,
    description: dummyText,
    image: dummyText,
    color: Colors.yellow,
    kartinRengi: renk1,
  ),
  Kart(
    id: 2,
    title: "sd",
    price: 1,
    description: dummyText,
    image: dummyText,
    color: Colors.yellow,
    kartinRengi: renk2,
  ),
  Kart(
    id: 3,
    title: "sd",
    price: 1,
    description: dummyText,
    image: dummyText,
    color: Colors.yellow,
    kartinRengi: renk3,
  ),
  Kart(
    id: 4,
    title: "sd",
    price: 1,
    description: dummyText,
    image: dummyText,
    color: Colors.yellow,
    kartinRengi: renk4,
  ),
  Kart(
    id: 5,
    title: "sd",
    price: 1,
    description: dummyText,
    image: dummyText,
    color: Colors.yellow,
    kartinRengi: renk5,
  ),
  Kart(
    id: 6,
    title: "sd",
    price: 1,
    description: dummyText,
    image: dummyText,
    color: Colors.yellow,
    kartinRengi: renk6,
  ),
];

String dummyText =
    "Bir köprü varmış. Köprüyü geçen köyü görebiliyormuş. Cümleyi uzatmak için örnek kelimeler yazıyorum.";
