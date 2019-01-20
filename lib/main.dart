import 'package:flutter/material.dart';
import 'package:copy_gojek/oojek_list_view_screen.dart';

void main() {
  runApp(OjekOjekan());
}

class OjekOjekan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oojek',
      home: OojekListViewScreen(),
    );
  }
}
