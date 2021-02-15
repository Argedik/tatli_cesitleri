import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        ListTile(
          title: Text("Çikolata"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text(" 7 TL"),
        ),
        ListTile(
          title: Text("Çikolata"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text(" 7 TL"),
        ),
        ListTile(
          title: Text("Çikolata"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text(" 7 TL"),
        ),
        SizedBox(height: 20.0),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Column(
              children: [
                Text(
                  "Toplam Tutar",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "21 TL",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                "Alışverişi Tamamla",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
