import 'package:flutter/material.dart';
import 'package:yasamak/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasamak/widgets.dart';

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
      initialRoute: AnaSayfa.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name){
          case AnaSayfa.routeName:
            return MaterialPageRoute(builder: (context) => AnaSayfa(),);
          default:null;
        }
      },
    );
  }
}
