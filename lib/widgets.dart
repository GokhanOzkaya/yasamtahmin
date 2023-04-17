import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasamak/constants.dart';
import 'package:google_fonts/google_fonts.dart';


class WidegetColumn extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final Widget? children;

  WidegetColumn(
      {this.text = 'Cinsiyet',
      this.icon = FontAwesomeIcons.venus,
      this.children});

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
        SizedBox(
          height: 10,
        ),
        Text(
          '$text',
          style: kTekstStili,
        ),
      ],
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final Color renk;
  final Widget children;
  final Function()? onPress;
  ContainerWidget({this.renk = Colors.white, required this.children, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: children,
        margin: EdgeInsets.all(12.3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.2),
          color: renk,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
      ),
    );
  }
}


