import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

List _elements = [
  {'name': 'John', 'group': 'Team A'},
  {'name': 'Will', 'group': 'Team B'},
  {'name': 'Beth', 'group': 'Team A'},
  {'name': 'Miranda', 'group': 'Team B'},
  {'name': 'Mike', 'group': 'Team C'},
  {'name': 'Danny', 'group': 'Team C'},
];

class MyApp123 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('asdqwdqw'),
        ),
        body: GroupedListView<dynamic, String>(
          elements: _elements,
          groupBy: (element) => element['group'],
          groupComparator: (value1, value2) => value2.compareTo(value1),
          itemComparator: (item1, item2) =>
              item1['name'].compareTo(item2['name']),
          order: GroupedListOrder.DESC,
          useStickyGroupSeparators: true,
          groupSeparatorBuilder: (String value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          itemBuilder: (c, element) {
            return Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  leading: Icon(Icons.account_circle),
                  title: Text(element['name']),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
