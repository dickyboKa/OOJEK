import 'package:flutter/material.dart';

Widget oopayBalance() {
  return Container(
      decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0))),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('OO PAY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16.0,
                )),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('Rp. 100.000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16.0,
                )),
          ),
        ],
      ));
}

Widget opayMenuItem(String menu_text, IconData menu_icon)
{
  return Container(
    padding: EdgeInsets.only(top: 22.0, left: 12.0, right: 12.0),
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Icon(menu_icon, color: Colors.white, size: 40.0),
        ),
        Text(menu_text, style: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.white, fontSize: 12.0)),
      ],
    )
  );
}
Widget oopayMenu() {
  return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          opayMenuItem('Pay', Icons.account_balance),
          opayMenuItem('Nearby', Icons.location_on),
          opayMenuItem('Top Up', Icons.add),
          opayMenuItem('more', Icons.more),
        ],
      ));
}

class OopayRoute extends StatelessWidget {
  final oopayView = Container(
      decoration: BoxDecoration(
        color: Colors.indigo[200],
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      height: 130,
      child: Column(
        children: <Widget>[
          oopayBalance(),
          oopayMenu(),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.0, top: 2.0, right: 12.0, bottom: 2.0),
      child: oopayView,
    );
  }
}
