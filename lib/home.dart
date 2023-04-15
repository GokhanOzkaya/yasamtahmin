import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasamak/constants.dart';
import 'package:yasamak/resultPage.dart';
import 'package:yasamak/user_data.dart';
import 'package:yasamak/widgets.dart';

class AnaSayfa extends StatefulWidget {
  static const String routeName = '/';
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool erkekMi= true;
  double icilenSigara = 30;
  double sporGunu = 0;
  int boy = 180;
  int kilo = 80;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Yasam Süresi Tahmin Edici'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerWidget(
                    children: buildRowOutLineButtom('BOY'),
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    children: buildRowOutLineButtom('KİLO'),
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
                    children: Column(
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
                    children: Column(
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
                    children: WidegetColumn(
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
                    children: WidegetColumn(
                      text: 'ERKEK',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => resultPage(userData: UserData(
                  erkekMi: erkekMi,
                  icilenSigara: icilenSigara,
                  sporGunu: sporGunu,
                  boy: boy,
                  kilo: kilo,
                ))));
              },
              child:Text('Yeşil Sayfa'),
          )
        ],
      ),
    );
  }

  Row buildRowOutLineButtom(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              label,
              style: kTekstStili,
            )),
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              label == 'BOY' ? '$boy' : '$kilo',
              style: kSayiStili,
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  label == 'BOY' ? boy++ : kilo++;
                });
              },
              child: Icon(FontAwesomeIcons.add),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  label == 'KİLO' ? kilo-- : boy--;
                });
              },
              child: Icon(FontAwesomeIcons.minus),
            ),
          ],
        ),
      ],
    );
  }
}
