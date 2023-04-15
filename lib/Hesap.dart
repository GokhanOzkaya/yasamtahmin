import 'package:yasamak/user_data.dart';

class hesap {
  UserData userData;
  hesap({required this.userData});

  double hesapla () {
    double sonuc;
    sonuc = 90 - (userData.icilenSigara)+(userData.sporGunu*2);
    sonuc=sonuc + (userData.boy/userData.kilo);
    if(userData.erkekMi){
      sonuc = sonuc-3;
    }
    return sonuc;
  }

}