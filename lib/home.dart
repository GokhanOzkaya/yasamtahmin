import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasamak/constants.dart';
import 'package:yasamak/widgets.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool? erkekMi;
  double icilenSigara = 30;
  double sporGunu = 0;
  int boy = 180;
  int kilo= 80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ibi'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'BOY',
                              style: kTekstStili,
                            )),
                        RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              '$boy',
                              style: kSayiStili,
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                boy++;
                                });
                              },
                              child: Icon(FontAwesomeIcons.add),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'BOY',
                              style: kTekstStili,
                            )),
                        RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              '$boy',
                              style: kSayiStili,
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  boy++;
                                });
                              },
                              child: Icon(FontAwesomeIcons.add),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Icon(FontAwesomeIcons.minus),
                            ),
                          ],
                        ),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Haftada kaç gün spor yapıyorsunuz ? ',
                          style: kTekstStili,
                        ),
                        Slider(
                            min: 0,
                            max: 7,
                            value: sporGunu,
                            divisions: 7,
                            onChanged: (double newValue) {
                              setState(() {
                                sporGunu = newValue;
                              });
                            }),
                        Text(
                          '${sporGunu.round()}',
                          style: kSayiStili,
                        ),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Günde kaç sigara içiyorsunuz',
                          style: kTekstStili,
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
                        Text(
                          '${icilenSigara.round()}',
                          style: kSayiStili,
                        ),
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
