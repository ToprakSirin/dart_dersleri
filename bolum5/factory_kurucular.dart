main(List<String> args) {
  Ogrenci emre = Ogrenci(5, "emre");
  Ogrenci hasan = Ogrenci.idSiz("hasan");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "ayse");

  print(ayse.id);
  print(ayse.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Varsayılan kurucu ");
  }

  Ogrenci.idSiz(this.isim) {
    print("isimlendirilmiş kurucu çalıştı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(0, isim);
  }
}
