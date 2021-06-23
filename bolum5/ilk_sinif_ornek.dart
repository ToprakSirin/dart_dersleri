main(List<String> args) {
  Ogrenci emre = Ogrenci();
  emre.ogrAd = "emre altunbilek";
  emre.ogrNo = 292;
  emre.aktifMi = true;
  Ogrenci hasan = Ogrenci();
  Ogrenci ayse = Ogrenci();

  var kemal = Ogrenci();
}

class Ogrenci {
  //instance variables
  int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = true;

  void dersCalis() {
    print("Öğrenci ders çalışıyor");
  }
}
