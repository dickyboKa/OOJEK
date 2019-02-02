import 'package:flutter/material.dart';
import 'package:copy_gojek/oopay_route.dart';
import 'package:copy_gojek/oojek_menu_route.dart';
import 'package:copy_gojek/oojek_news_route.dart';

class OojekListViewScreen extends StatelessWidget {

  String loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua";
  Widget _buildCatgeoryWidget() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return OopayRoute();
        } else if(index == 1){
          return OojekMenuRoute();
        } else {
          return OojekNewsRoute(
            newsContent: loremIpsum,
            backgroundImage: Colors.grey,
            newsTitle: "NBA ALL STAR",
          );
          /*
          return Card(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child:
                    Text(index.toString(), style: TextStyle(fontSize: 22.0))),
          );
          */
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
