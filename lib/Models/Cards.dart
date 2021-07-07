import 'package:flutter/material.dart';

class Kart {
  final String image, title, description;
  final int id;
  final List<Color> kartinRengi;
  final Color renk;

  Kart({
    this.id,
    this.image,
    this.title,
    this.description,
    this.kartinRengi,
    this.renk,
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

List<Kart> kartlar = [
  Kart(
    id: 1,
    title: "sd",
    description: dummyText,
    image: _fayanslar[1],
    kartinRengi: _renkler[0],
    renk: Color(0xfff5a31a),
  ),
  Kart(
    id: 2,
    title: "sd",
    description: dummyText,
    image: dummyText,
    kartinRengi: _renkler[1],
    renk: Color(0xffD32626),
  ),
  Kart(
    id: 3,
    title: "sd",
    description: dummyText,
    image: dummyText,
    kartinRengi: _renkler[2],
    renk: Color(0xff79D70F),
  ),
  Kart(
    id: 4,
    title: "sd",
    description: dummyText,
    image: dummyText,
    kartinRengi: _renkler[3],
    renk: Color(0xff53D1FF),
  ),
  Kart(
    id: 5,
    title: "sd",
    description: dummyText,
    image: dummyText,
    kartinRengi: _renkler[4],
    renk: Color(0xff11698E),
  ),
  Kart(
    id: 6,
    title: "sd",
    description: dummyText,
    image: dummyText,
    kartinRengi: _renkler[5],
    renk: Color(0xffFFFF00),
  ),
];

String dummyText =
    "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. "
    "Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere"
    " bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte "
    "metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış,"
    " aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. "
    "1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile "
    "ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum "
    "sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur."
    "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. "
    "Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere"
    " bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte "
    "metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış,"
    " aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. "
    "1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile "
    "ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum "
    "sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.";
