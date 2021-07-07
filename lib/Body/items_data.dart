import 'package:flutter/material.dart';

import './item.dart';

class ItemData with ChangeNotifier {
  final List<Item> items = [
    Item(title: "İlk Görev"),
    Item(title: "İkinci  Görev"),
    Item(title: "Üçüncü Görev"),
    Item(title: "Dördüncü Görev"),
  ];
}
