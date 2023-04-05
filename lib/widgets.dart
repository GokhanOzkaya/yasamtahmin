import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WidegetColumn extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final Widget? children;

  WidegetColumn({this.text='Cinsiyet',this.icon=FontAwesomeIcons.venus,this.children});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 56,
          color: Colors.black54,
        ),
        SizedBox(height: 10,),
        Text(
          '$text',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final Color renk;
  final Widget? child;
  ContainerWidget({this.renk = Colors.white, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.3),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(16.2), color: renk),
    );
  }
}
