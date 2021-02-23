import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Menues/Details/AnaSayfa_Kategorileri.dart';
import 'package:tatli_cesitleri/Models/Cards.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> _resimler = [
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
  final List<String> _yemeklerinAciklamalari = [
    "• 4.5 litre sıcak su\n• 250 gram  buğday\n• prinç\n• nohut\n• fasulye"
        "\n• şeker",
    "\n• Dondurma lazım",
    dummyText,
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
    int drawerSettingNameColors = 0xffF5A31A;
    int drawerSettingIconColors = 0xffD32626;

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
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: buildAppBar(yukseklik),
      drawer: buildDrawer(drawerSettingNameColors, drawerSettingIconColors),
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
                  itemCount: _resimler.length,
                  itemBuilder: (BuildContext context, int index) => Column(
                    children: [
                      Expanded(
                        //Kartların dizaynları
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AnaSayfaKategorileri(
                                  description: _yemeklerinAciklamalari[index],
                                  product: _yemekler[index],
                                  image: _resimler[index],
                                  renk: kartlar[index % 6].renk,
                                  id: kartlar[index % 6].id,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            padding: EdgeInsets.only(
                                left: 9.0, right: 9.0, top: 6.0),
                            height: 180,
                            width: 137,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(44.0),
                              gradient: LinearGradient(
                                begin: Alignment(0.95, -1.0),
                                end: Alignment(-1.0, 1.0),
                                stops: [0.0, 0.197, 0.678, 1.0],
                                //colors: _renkler[index % 6],
                                colors: kartlar[index % 6].kartinRengi,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 8),
                                  blurRadius: 6,
                                ),
                              ],
                            ),

                            //Kartların içerikleri
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
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        image: DecorationImage(
                                          image: AssetImage(_resimler[index]),
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

  Drawer buildDrawer(int drawerSettingNameColors, int drawerSettingIconColors) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Enes Gedik"),
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
    );
  }

  AppBar buildAppBar(double yukseklik) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.white,
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
