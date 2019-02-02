import 'package:flutter/material.dart';
import 'package:copy_gojek/oopay_route.dart';
import 'package:copy_gojek/oojek_menu_route.dart';
import 'package:copy_gojek/oojek_news_route.dart';

class OojekListViewScreen extends StatelessWidget {


  String loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua";
  Widget _buildCatgeoryWidget(List<String> images, List<String> titles) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return OopayRoute();
        } else if(index == 1){
          return OojekMenuRoute();
        } else {
          return OojekNewsRoute(
            newsContent: loremIpsum,
            backgroundImage: images[index - 2],
            newsTitle: titles[index - 2],
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

  final newsImages = <String>["assets/anthony_davis.jpg", "assets/bill_gates.jpg", "assets/kd_and_lebron.jpg", "assets/saints_lose_to_rams.jpg", "assets/true_detective.jpg"];
  final newsTitles = <String>["Anthony Davis To Lakers", "Bill Gates To Fix Toilet", "KD vs Lebron", "Saints Lose to Rams", "True Detective Return"];
  @override
  Widget build(BuildContext context) {
    final listView = Container(
        color: Colors.white,
        padding: EdgeInsets.all(2.0),
        child: _buildCatgeoryWidget(newsImages, newsTitles));

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
