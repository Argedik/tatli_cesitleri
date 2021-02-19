import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
  final List<String> _yemekler = [
    "Aşure",
    "Dondurma",
    "Fırında Sütlaç",
    "Güllaç",
    "Kadayıf",
    "Macun Şekeri",
    "Revani",
    "Şekerpare",
    "Sütlaç",
    "Sütlü Nuriye",
  ];

  @override
  Widget build(BuildContext context) {
    double yukseklik = MediaQuery.of(context).size.height;
    int drawer_setting_name_colors = 0xffF5A31A;
    int drawer_setting_icon_colors = 0xffD32626;

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

    final Color text1 = Color(0xffD32626);
    final Color text2 = Color(0xffF5A31A);
    final Color text3 = Color(0xff11698E);
    final Color text4 = Color(0xff79D70F);
    final Color text5 = Color(0xffBE79DF);
    final Color text6 = Color(0xff595238);
    final List<Color> _metinler = [
      text1,
      text2,
      text3,
      text4,
      text5,
      text6,
    ];

    int _aktifIcerikNo = 0;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
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
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.3, -1.3),
              end: Alignment(1.3, 1.3),
              colors: [Colors.yellowAccent, Colors.redAccent],
            ),
            border: Border(
              top: BorderSide(color: Colors.orangeAccent[200]),
            ),
          ),
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    childAspectRatio: (137 / 150),
                  ),
                  padding: EdgeInsets.all(5.0),
                  itemCount: _fayanslar.length,
                  itemBuilder: (BuildContext context, int index) => Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5.0),
                        padding:
                            EdgeInsets.only(left: 9.0, right: 9.0, top: 6.0),
                        height: 180,
                        width: 137,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(44.0),
                          gradient: LinearGradient(
                            begin: Alignment(0.95, -1.0),
                            end: Alignment(-1.0, 1.0),
                            stops: [0.0, 0.197, 0.678, 1.0],
                            colors: _renkler[index % 6],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 8),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  height: 90,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x29000000),
                                        offset: Offset(0, 8),
                                        blurRadius: 6,
                                      ),
                                    ],
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: DecorationImage(
                                      image: AssetImage(_fayanslar[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                _yemekler[index],
                                style: TextStyle(
                                    color: _metinler[index % 6],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
