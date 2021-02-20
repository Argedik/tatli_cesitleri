import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Body/Urunler.dart';
import 'package:tatli_cesitleri/Menues/Ana_Sayfa.dart';
import 'package:tatli_cesitleri/Menues/Profil.dart';
import 'package:tatli_cesitleri/Menues/Toplum.dart';
import 'Body/Sepetim.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _aktifIcerikNo = 2;
  List<Widget> _icerikler;

  @override
  void initState() {
    super.initState();

    _icerikler = [
      Urunler(),
      Sepetim(),
      Body(),
      Toplum(),
      Profil(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff79d70f),
      body: _icerikler[_aktifIcerikNo],
      bottomNavigationBar: ConvexAppBar(
        //alttaki 2 yani homepage butonu üstüne 12 mesaj var yazısı
        //bottomNavigationBar: ConvexAppBar.badge({2: "12"},
        initialActiveIndex: _aktifIcerikNo,
        items: [
          TabItem(icon: Icons.bookmark, title: "Favoriler"),
          TabItem(icon: Icons.addchart, title: "Zirve"),
          TabItem(icon: Icons.home, title: "Ana Sayfa"),
          TabItem(icon: Icons.people, title: "Toplum"),
          TabItem(icon: Icons.perm_contact_calendar_rounded, title: "Profil"),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
