import 'package:flutter/material.dart';
import 'package:yasamak/Hesap.dart';
import 'package:yasamak/constants.dart';
import 'package:yasamak/user_data.dart';
import 'package:yasamak/widgets.dart';

class resultPage extends StatelessWidget {
  final UserData userData;

  const resultPage({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        Expanded(flex: 15, child: Center(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ContainerWidget(
                  onPress: (){},
                  renk: Colors.white,
                  children:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,top: 16),
                        child: Text('Kilo:'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,bottom: 16,right: 16),
                        child: Text('${userData.kilo.round().toString()}',style: kTekstStili),
                      ),
                    ],
                  ),
                ),
                ContainerWidget(
                  onPress: (){},
                  renk: Colors.white,
                  children:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,top: 16),
                        child: Text('Boy:'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,bottom: 16,right: 16),
                        child: Text('${userData.boy.round().toString()}',style: kTekstStili),
                      ),
                    ],
                  ),
                ),
                ContainerWidget(
                  onPress: (){},
                  renk: Colors.white,
                  children:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,top: 16),
                        child: Text('Haftalık Spor Günü:'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,bottom: 16,right: 16),
                        child: Text('${userData.sporGunu.round().toString()}',style: kTekstStili),
                      ),
                    ],
                  ),
                ),
                ContainerWidget(
                  onPress: (){},
                  renk: Colors.white,
                  children:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,top: 16),
                        child: Text('Günlük İçilen Sigara:'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,bottom: 16,right: 16),
                        child: Text('${userData.icilenSigara.round().toString()}',style: kTekstStili),
                      ),
                    ],
                  ),
                ),
                ContainerWidget(
                  onPress: (){},
                  renk: Colors.white,
                  children:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,top: 16),
                        child: Text('Cinsiyet:'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,bottom: 16,right: 16),
                        child: Text('${userData.erkekMi?'ERKEK':'KADIN'}',style: kTekstStili),
                      ),
                    ],
                  ),
                ),

              ],
            )
          ),
        ),
        Expanded(flex: 2,child: ContainerWidget(children: Center(child: Text('${hesap(userData: userData).hesapla().round().toString()}',style: kTekstStili.copyWith(color: Colors.white),)),renk: Colors.green,onPress: (){}),),
        SizedBox(height: 30,),
        Expanded(
            flex: 1,
            child: ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('Geri Dön',style: kTekstStili.copyWith(color: Colors.white),))),
      ]),
    );
  }
}
