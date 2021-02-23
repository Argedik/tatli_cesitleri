import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Models/Cards.dart';

import 'favori_ve_sayac_butonlari.dart';
import 'kart_sayaci.dart';

class KategoriGovdesi extends StatefulWidget {
  final String description, product, image;
  final int id;
  final Color renk;

  const KategoriGovdesi(
      {Key key,
      @required this.description,
      @required this.product,
      @required this.image,
      @required this.renk,
      @required this.id})
      : super(key: key);

  @override
  _KategoriGovdesiState createState() => _KategoriGovdesiState();
}

class _KategoriGovdesiState extends State<KategoriGovdesi> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20.0,
                    right: 20.0,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(44),
                      topRight: Radius.circular(44),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Color"),
                                Row(
                                  children: [
                                    RenkliNokta(
                                      color: Colors.blueAccent,
                                      isSelected: true,
                                    ),
                                    RenkliNokta(color: Colors.yellowAccent),
                                    RenkliNokta(color: Colors.redAccent),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.blueAccent),
                                children: [
                                  TextSpan(text: "Soğuk Tatlı\n"),
                                  TextSpan(
                                    text: "15 dakika",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueAccent),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          dummyText,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      FavoriButonveSayac(),
                      SizedBox(height: 10.0),
                      //alt detay menü en alttaki büyük buton
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20.0),
                              height: 50,
                              width: 58,
                              decoration: BoxDecoration(
                                border: Border.all(color: widget.renk),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: widget.renk,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)),
                                  color: widget.renk,
                                  onPressed: () {},
                                  child: Text(
                                    "Deneme".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nefis Tatlı",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        widget.product,
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: "Absürt\n"),
                                TextSpan(
                                  text: "${widget.product}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Image.asset(
                              widget.image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RenkliNokta extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const RenkliNokta({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, right: 10),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
