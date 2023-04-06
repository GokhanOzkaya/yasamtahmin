import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasamak/widgets.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool? erkekMi;
  double icilenSigara = 30;
  double sporGunu =0;


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
                  child: ContainerWidget(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Haftada Kaç Gün Spor Yapıyorsunuz ? '),
                      Slider(
                        min: 0,
                        max: 7,
                          value: sporGunu,
                          onChanged:(double newValue){
                          setState(() {
                            sporGunu=newValue;
                          });
                        }
                      ),
                      Text(
                          '${sporGunu.round()}'
                      ),
                    ],
                  ),),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Günde kaç sigara içiyorsunuz',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      SizedBox(height: 15 ,),
                        Text(
                          '${icilenSigara.round()}',
                          style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Slider(
                            max: 60,
                            min: 0,
                            value: icilenSigara,
                            onChanged: (double newValue) {
                              setState(() {
                                icilenSigara = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                    onPress: () {
                      setState(() {
                        erkekMi = false;
                      });
                    },
                    renk: erkekMi == false ? Colors.black26 : Colors.white,
                    child: WidegetColumn(
                        text: 'KADIN', icon: FontAwesomeIcons.venus),
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    onPress: () {
                      setState(() {
                        erkekMi = true;
                      });
                    },
                    renk: erkekMi == true ? Colors.black26 : Colors.white,
                    child: WidegetColumn(
                      text: 'ERKEK',
                      icon: FontAwesomeIcons.mars,
                    ),
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
