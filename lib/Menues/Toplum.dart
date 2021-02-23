import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Menues/Details/FavoriKategorileri.dart';

class Toplum extends StatefulWidget {
  @override
  _ToplumState createState() => _ToplumState();
}

class _ToplumState extends State<Toplum> with SingleTickerProviderStateMixin {
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
    int drawerSettingNameColors = 0xffF5A31A;
    int drawerSettingIconColors = 0xffD32626;
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        toolbarHeight: yukseklik * 0.15,
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
              gradient: RadialGradient(radius: 0.55, colors: [
                Colors.greenAccent,
                Colors.blueAccent,
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
                      style: drawerTextStyle(drawerSettingNameColors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.login,
                    color: Color(drawerSettingIconColors),
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
                      style: drawerTextStyle(drawerSettingNameColors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.contact_support,
                    color: Color(drawerSettingIconColors),
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
                      style: drawerTextStyle(drawerSettingNameColors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.notifications_active_sharp,
                    color: Color(drawerSettingIconColors),
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
                      style: drawerTextStyle(drawerSettingNameColors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.contact_support,
                    color: Color(drawerSettingIconColors),
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
                      style: drawerTextStyle(drawerSettingNameColors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.call,
                    color: Color(drawerSettingIconColors),
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
                      style: drawerTextStyle(drawerSettingNameColors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.warning,
                    color: Color(drawerSettingIconColors),
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
                      style: drawerTextStyle(drawerSettingNameColors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.perm_device_information_outlined,
                    color: Color(drawerSettingIconColors),
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
                      style: drawerTextStyle(drawerSettingNameColors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.star_sharp,
                    color: Color(drawerSettingIconColors),
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
                      style: drawerTextStyle(drawerSettingNameColors)),
                  onTap: () {},
                  leading: Icon(
                    Icons.share,
                    color: Color(drawerSettingIconColors),
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
