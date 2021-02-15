import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Body/Urunler_Sepeti/UKD.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();
    if (widget.kategori == "temel gıda") {
      gosterilecekListe = [
        urunKarti(
          "Zeytin Yağı",
          "23.50 TL",
          "https://cdn.pixabay.com/photo/2017/06/21/09/19/spoon-2426623_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Süt",
          "3.50 TL",
          "https://cdn.pixabay.com/photo/2017/06/21/09/19/spoon-2426623_960_720.jpg",
        ),
        Container(color: Colors.green),
        Container(color: Colors.teal),
      ];
    } else if (widget.kategori == "şekerleme") {
      gosterilecekListe = [
        Container(color: Colors.red),
        Container(color: Colors.blue),
      ];
    } else if (widget.kategori == "içecekler") {
      gosterilecekListe = [
        Container(color: Colors.teal),
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
      ];
    } else if (widget.kategori == "temizlik") {
      gosterilecekListe = [
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.teal),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      isim: isim,
                      fiyat: fiyat,
                      resimYolu: resimYolu,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              //şeffaflık
              color: Colors.green.withOpacity(0.2),
              blurRadius: 4.0,
              //gölgenin yayılma yarıçapı
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: isim,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimYolu),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              isim,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            SizedBox(height: 8.0),
            Text(
              fiyat,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        padding: EdgeInsets.all(10.0),
        //eni boyunun 1 katı
        childAspectRatio: 1,
        children: gosterilecekListe);
  }
}
