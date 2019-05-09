import 'package:flutter/material.dart';


class OojekMenuRoute extends StatefulWidget {
  const OojekMenuRoute();
  @override
  _OojekMenuRouteState createState() => _OojekMenuRouteState();
}


class _OojekMenuRouteState extends State<OojekMenuRoute> {
  var dicky = "OO-RIDE";
  Widget firstMenu() {
    return Container(
        height: 100,
        padding: EdgeInsets.only(top: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            oojek_menu_item(dicky, Icons.motorcycle, Colors.orange),
            oojek_menu_item("OO-CAR", Icons.local_taxi, Colors.purple),
            oojek_menu_item("OO-DUCK", Icons.shopping_cart, Colors.lightBlue),
            oojek_menu_item("OO-FOOD", Icons.restaurant, Colors.red),
          ],
        ));
  }

  Widget secondMenu() {
    return Container(
        padding: EdgeInsets.only(top: 15.0),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            oojek_menu_item("OO-SEND", Icons.local_shipping, Colors.green),
            oojek_menu_item("OO-DEALS", Icons.shopping_basket, Colors.red),
            oojek_menu_item("OO-PULSA", Icons.phone_android, Colors.greenAccent),
            oojek_menu_item("MORE", Icons.expand_more, Colors.grey),
          ],
        ));
  }

  Widget oojek_menu_item(String menuText, IconData menuIcon, Color menuColor) {
    return Container(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: InkWell(
          onTap: () {
            print("Dicky");
            setState(() {
              dicky = "DICKY";
            });
          },
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    border: Border.all(color: Colors.black12)),
                height: 60.0,
                width: 55.0,
                child: Icon(menuIcon, color: menuColor, size: 35.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(menuText,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        fontSize: 12.0)),
              )
            ],
          ),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        height: 230,
        child: Column(
          children: <Widget>[firstMenu(), secondMenu()],
        ));
  }
}
