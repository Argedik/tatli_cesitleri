import 'package:flutter/material.dart';
import 'package:tatli_cesitleri/Menues/Details/Body/body.dart';

class AnaSayfaKategorileri extends StatefulWidget {
  final String description, product, image;
  final int id;
  final Color renk;

  const AnaSayfaKategorileri({
    Key key,
    @required this.description,
    @required this.product,
    @required this.image,
    @required this.renk,
    @required this.id,
  }) : super(key: key);

  @override
  _AnaSayfaKategorileriState createState() => _AnaSayfaKategorileriState();
}

class _AnaSayfaKategorileriState extends State<AnaSayfaKategorileri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.renk,
      appBar: buildAppBar(context),
      body: KategoriGovdesi(
        image: widget.image,
        renk: widget.renk,
        description: widget.description,
        product: widget.product,
        id: widget.id,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: widget.renk,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        iconSize: 35.0,
        color: Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(icon: Icon(Icons.bookmark), onPressed: () {}),
      ],
    );
  }
}
