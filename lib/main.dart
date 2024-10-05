import 'package:flutter/material.dart';
import 'package:flutter_shopping_gift_app/constant/color.dart';
import 'package:flutter_shopping_gift_app/ui/dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App Demo',
      theme: ThemeData(
        primarySwatch: ThemeWhite,
      ),
      home: Scaffold(
        body: Dashboard(),
        appBar: AppBar(
          centerTitle: false,
          title: Text("Shopping App"),
          elevation: 0,
        ),
        drawer: Drawer(),
      ),
    );
  }
}
