import 'package:flutter/material.dart';
import 'package:flutter_darkmode_ui/model/fourniture.dart';
import 'homePage.dart';

void main() => runApp(MyApp());
 var currentFourniture = fournitureList.fournitures[0];
class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "slabo",
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
