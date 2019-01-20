import 'package:flutter/material.dart';
import 'package:copy_gojek/oopay_route.dart';

class OojekListViewScreen extends StatelessWidget {
  Widget _buildCatgeoryWidget() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return OopayRoute();
        } else {
          return Card(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child:
                    Text(index.toString(), style: TextStyle(fontSize: 22.0))),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final listView = Container(
        color: Colors.white,
        padding: EdgeInsets.all(2.0),
        child: _buildCatgeoryWidget());

    final appBar = AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Text('OOJEK',
          style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo)),
    );
    return Scaffold(appBar: appBar, body: listView);
  }
}
