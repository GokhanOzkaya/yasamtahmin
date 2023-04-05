import 'package:flutter/material.dart';
import 'package:yasamak/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueAccent[100],
      ),
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

