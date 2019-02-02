import 'package:flutter/material.dart';

class OojekNewsRoute extends StatelessWidget {
  final String newsTitle;
  final String newsContent;
  final String backgroundImage;

  const OojekNewsRoute(
      {Key key,
      @required this.newsContent,
      @required this.backgroundImage,
      @required this.newsTitle})
      : assert(newsContent != null),
        assert(backgroundImage != null),
        assert(newsTitle != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(backgroundImage),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 15.0),
                    child: Text("OO-NEWS",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16.0))),
                Padding(
                    padding:
                        EdgeInsets.only(left: 10.0, top: 100.0, bottom: 5.0),
                    child: Text(newsTitle,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15.0))),
                Padding(
                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(newsContent,
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12.0))),
                        Container(
                          width: 70.0,
                          height: 25.0,
                          padding: EdgeInsets.only(
                            left: 5.0,
                            right: 5.0,
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                color: Colors.green[300],
                              ),
                              padding: EdgeInsets.only(top: 4.0),
                              child: Text("READ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15.0))),
                        )
                      ],
                    ))
              ],
            )));
  }
}
