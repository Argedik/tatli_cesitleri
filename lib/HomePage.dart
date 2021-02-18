import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Body/HomePage_Body.dart';
import 'package:tatli_cesitleri/Body/Urunler.dart';
import 'Body/Sepetim.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _aktifIcerikNo = 0;
  List<Widget> _icerikler;

  @override
  void initState() {
    super.initState();

    _icerikler = [
      Urunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    //double genislik = MediaQuery.of(context).size.width;
    double yukseklik = MediaQuery.of(context).size.height;
    color

    return Scaffold(
      backgroundColor: const Color(0xff79d70f),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: yukseklik * 0.05,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Ana Sayfa',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: const Color(0xff11698e),
          ),
        ),
      ),
      body: Body(),
      //body: _icerikler[_aktifIcerikNo],
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Enes Gdik"),
                accountEmail: Text("gedikas@hotmail.com"),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2018/07/31/22/08/lion-3576045_960_720.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.red[400]),
              ),
              ListTile(
                title: Text("Giriş Yap"),
                onTap: () {},
                leading: Icon(
                  Icons.login,
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text("Bildirimler"),
                onTap: () {},
                leading: Icon(
                  Icons.notifications_active_sharp,
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text("SSS"),
                onTap: () {},
                leading: Icon(
                  Icons.contact_support,
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text("İletişim"),
                onTap: () {},
                leading: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text("Hata Bildir"),
                onTap: () {},
                leading: Icon(
                  Icons.warning,
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text("Uygulamayı Puanla"),
                onTap: () {},
                leading: Icon(
                  Icons.star_sharp,
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text("Uygulamayı Paylaş"),
                onTap: () {},
                leading: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: Text("Hakkımızda"),
                onTap: () {},
                leading: Icon(
                  Icons.perm_device_information_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Ürünler")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("Sepetim"))
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
