import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tatli_cesitleri/Body/item_cart.dart';
import 'package:tatli_cesitleri/Body/items_data.dart';

class absurt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Absürt Osman"),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "${Provider.of<ItemData>(context).items.length} Items",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) => ItemCard(
                      title: Provider.of<ItemData>(context).items[index].title,
                      isDone:
                          Provider.of<ItemData>(context).items[index].isDone,
                    ),
                    itemCount: Provider.of<ItemData>(context).items.length,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
