/*
1- CemberDaire isimli sınıf oluşturun.Bu sınıfın yarıçap alan kurucusu olmalı.Ayrıca cevre ve alanı hesaplayan metotlar olmalı.(Pi sayısı 3,14 alın) 

*/
import 'cember_daire.dart';

main(List<String> args) {
  CemberDaire c1 = CemberDaire(4);
  print("Alan :${c1.alanHesapla()}");
  print("Çevre :${c1.cevreHesapla()}");
}
