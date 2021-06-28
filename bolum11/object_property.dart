import 'dart:math';

class MetinUretici {
  String? metin = "emre";
}

class RastgeleMetinUretici {
  String? degerUret() {
    if (Random().nextBool()) {
      return 'string ifade';
    } else {
      return null;
    }
  }

  //int get yas => 34;
}

main(List<String> args) {
  final uretici = RastgeleMetinUretici();
  String? sonuc = uretici.degerUret();
  if (sonuc == null) {
    print("Null değer oldu");
  } else {
    metniYazdir(sonuc);
  }
  MetinUretici m = MetinUretici();
  String? met = m.metin;
  if(met !=null)
  metniYazdir(m.metin!);
}

void metniYazdir(String ifade) {
  print(ifade);
}
