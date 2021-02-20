import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//firebase kullanımı
/*import 'package:cloud_firestore/cloud_firestore.dart';
// firebase id şifre kullanımı
import 'package:firebase_auth/firebase_auth.dart';
//
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';
import 'package:timeago/timeago.dart';
*/
import './HomePage.dart';
//import 'Try/deneme1.dart';

void main() async {
  //aşağıdaki 3 satır kod statusbar ı transparent hale getiriyor
  /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));*/

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartPage(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (context) => HomePage());
          default:
            return null;
        }
      },
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //statusbarrı aşağıda yukarda göster komutu
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIOverlays([]);
    double genislik = MediaQuery.of(context).size.width;
    double yukseklik = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: yukseklik,
        width: genislik,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xffffaa00),
              const Color(0xfe79d70f),
              const Color(0xfc79d70f),
            ],
          ),
        ),
        child: Stack(
          children: [
            //Orta kısım görünümü

            Container(
              //genişliği ekrana sığdır.
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 12,
                    child: Text(''),
                  ),
                  Expanded(
                    flex: 18,
                    child: Stack(
                      children: [
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, HomePage.routeName);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 66,
                            width: 275,
                            child: Container(
                              width: genislik * 0.4,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Fazla aş ya karın ağrıtır ya da baş.',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        color: const Color(0xffedf4f2),
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //kenarlıklara kıvrım
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(200.0),
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(200.0),
                                bottomLeft: Radius.circular(20.0),
                              ),

                              //renk ayarları
                              gradient: RadialGradient(
                                //renk dalgasının x ve y eksenleri
                                //center: Alignment(0.0, 0.0),
                                radius: 2,
                                colors: [
                                  const Color(0xfcf5a31a),
                                  const Color(0xfcd32626)
                                ],
                                //renk tonlarında 0-1 arasındaki duruş yerleri
                                stops: [0.0, 1.0],
                                tileMode: TileMode.mirror,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 8),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Alt kısım görünümü
            Positioned(
              top: yukseklik - 120,
              left: -120,
              child: Image.asset('assets/Materials/Daire.png'),
            ),

            //Üst kısım görünümü
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Image.asset('assets/Materials/Argedik_logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
