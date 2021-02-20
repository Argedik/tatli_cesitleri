import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Body/Urunler.dart';
import 'package:tatli_cesitleri/Menues/Ana_Sayfa.dart';
import 'package:tatli_cesitleri/Menues/Favoriler.dart';
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
      Favoriler(),
      Profil(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    //double genislik = MediaQuery.of(context).size.width;
    //double yukseklik = MediaQuery.of(context).size.height;

    Color bottom_navigation_passive_color = Colors.green[300];
    Color bottom_navigation_active_color = Colors.blue[600];

    return Scaffold(
      backgroundColor: const Color(0xff79d70f),
      body: _icerikler[_aktifIcerikNo],
      /*drawer: Drawer(
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
              Container(
                decoration: BoxDecoration(
                  color: Color(0x8f8FF9F9),
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: ListTile(
                  title: Text("Giriş Yap",
                      style: drawerTextStyle(drawer_setting_name_colors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.login,
                    color: Color(drawer_setting_icon_colors),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0x8f8FF9F9),
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: ListTile(
                  title: Text("Profil Ayarları",
                      style: drawerTextStyle(drawer_setting_name_colors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.contact_support,
                    color: Color(drawer_setting_icon_colors),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: ListTile(
                  title: Text("Bildirimler",
                      style: drawerTextStyle(drawer_setting_name_colors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.notifications_active_sharp,
                    color: Color(drawer_setting_icon_colors),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: ListTile(
                  title: Text("SSS",
                      style: drawerTextStyle(drawer_setting_name_colors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.contact_support,
                    color: Color(drawer_setting_icon_colors),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: ListTile(
                  title: Text("İletişim",
                      style: drawerTextStyle(drawer_setting_name_colors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.call,
                    color: Color(drawer_setting_icon_colors),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
                child: ListTile(
                  title: Text("Öneri/Hata Bildir",
                      style: drawerTextStyle(drawer_setting_name_colors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.warning,
                    color: Color(drawer_setting_icon_colors),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: ListTile(
                  title: Text("Hakkımızda",
                      style: drawerTextStyle(drawer_setting_name_colors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.perm_device_information_outlined,
                    color: Color(drawer_setting_icon_colors),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
                child: ListTile(
                  title: Text("Uygulamayı Puanla",
                      style: drawerTextStyle(drawer_setting_name_colors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.star_sharp,
                    color: Color(drawer_setting_icon_colors),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
                child: ListTile(
                  title: Text("Uygulamayı Paylaş",
                      style: drawerTextStyle(drawer_setting_name_colors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.share,
                    color: Color(drawer_setting_icon_colors),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),*/
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: _aktifIcerikNo,
        items: [
          TabItem(icon: Icons.bookmark, title: "Favoriler"),
          TabItem(icon: Icons.bookmark, title: "Favoriler"),
          TabItem(icon: Icons.bookmark, title: "Favoriler"),
          TabItem(icon: Icons.bookmark, title: "Favoriler"),
          TabItem(icon: Icons.bookmark, title: "Favoriler"),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }

  TextStyle navigationMenuTextStyle(Color bottom_navigation_active_color) {
    return TextStyle(
        color: bottom_navigation_active_color,
        fontWeight: FontWeight.bold,
        fontSize: 15.0);
  }

  /*TextStyle drawerTextStyle(int color1) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: Color(color1),
      fontSize: 20.0,
    );
  }*/
}

/*bottomNavigationBar: BottomNavigationBar(
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
      ),*/
