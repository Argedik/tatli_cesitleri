import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Menues/Details/FavoriKategorileri.dart';

class Favoriler extends StatefulWidget {
  @override
  _FavorilerState createState() => _FavorilerState();
}

class _FavorilerState extends State<Favoriler>
    with SingleTickerProviderStateMixin {
  TabController tvController;
  Size get boyut => MediaQuery.of(context).size;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tvController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double yukseklik = MediaQuery.of(context).size.height;
    int drawer_setting_name_colors = 0xffF5A31A;
    int drawer_setting_icon_colors = 0xffD32626;
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.orangeAccent,
        ),
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Ana Sayfa',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.orangeAccent,
          ),
        ),
        bottom: TabBar(
          controller: tvController,
          //seçili yerin alt çizgisi
          //indicatorColor: Colors.yellow,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blueAccent,
                Colors.greenAccent,
              ]),
              borderRadius: BorderRadius.circular(44)),
          labelColor: Colors.yellowAccent,
          unselectedLabelColor: Colors.orangeAccent,
          tabs: [
            Tab(
                icon: Icon(Icons.bookmark),
                iconMargin: EdgeInsets.all(0.0),
                child: Text("Favoriler",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
            Tab(
                child: Text("Yemek Uyumu",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
            Tab(
                child: Text("Sağlık",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
          ],
        ),
        //toolbarHeight: yukseklik * 0.05,
      ),
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
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(width: 1, color: Colors.orangeAccent[200])),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tvController,
              children: [
                Center(
                  child: FavoriKategorileri(
                    kategori: "asasdd",
                  ),
                ),
                FavoriKategorileri(kategori: "deneme"),
                FavoriKategorileri(kategori: "absrt"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle drawerTextStyle(int color1) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: Color(color1),
      fontSize: 20.0,
    );
  }
}

/*                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(44),
                        border: Border.all(color: Color(0xffF5A31A), width: 1)),*/

/*
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
*/
