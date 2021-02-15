import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Body/Urunler_Sepeti/Urunler_kategori.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  TabController televizyonKontrolcusu;

  @override
  void initState() {
    super.initState();
    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: televizyonKontrolcusu,
          indicatorColor: Colors.blue,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight
                  .w500), // w500 textin kalınlık seviyesi rakam arttıkça kalınlık artıyor
          tabs: [
            Tab(child: Text("Temel Gıda")),
            Tab(child: Text("Şekerleme")),
            Tab(child: Text("İçecekler")),
            Tab(child: Text("Temizlik")),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: televizyonKontrolcusu,
            children: [
              Kategori(kategori: "temel gıda"),
              Kategori(kategori: "şekerleme"),
              Kategori(kategori: "içecekler"),
              Kategori(kategori: "temizlik"),
            ],
          ),
        ),
      ],
    );
  }
}
