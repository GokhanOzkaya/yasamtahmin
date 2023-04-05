import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasamak/widgets.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ibi'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(renk: Colors.black),
                ),
                Expanded(
                  child: ContainerWidget(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                    child: WidegetColumn(text: 'KADIN',icon: FontAwesomeIcons.venus),
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    child: WidegetColumn(text: 'ERKEK', icon: FontAwesomeIcons.mars,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

