import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Widget'),
          bottom: TabBar(
            tabs: [
              Tab(
                  child: Text("Sağlık",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600))),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('It\'s cloudy here'),
            ),
            Center(
              child: Text('It\'s rainy here'),
            ),
            Center(
              child: Text('It\'s sunny here'),
            ),
          ],
        ),
      ),
    );
  }
}
