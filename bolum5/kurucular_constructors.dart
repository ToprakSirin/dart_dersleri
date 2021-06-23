main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  /*  honda.marka = "Honda";
  honda.modelYili = 2022;
  honda.otomatikMi = true; */
  honda.bilgileriSoyle();

  var reno = Araba(2019, "Reno", false);
  reno.bilgileriSoyle();

  var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

  var citroen = Araba.markasizKurucuMetot(false, 2015);
  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "Suzuki");

  suzuki.bilgileriSoyle();
  suzuki.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;
/* 
  Araba() {
    print("Kurucu method tetiklendi");
  } */

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("Kurucu method tetiklendi");
  }

  Araba.markasizKurucuMetot(this.otomatikMi, this.modelYili);
  Araba.modelYiliOlmayanKurucuMetot(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }
/*   Araba(int modelYili, String marka, bool otomatikMi) {
    print("Kurucu method tetiklendi");
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  } */

  void bilgileriSoyle() {
    print(
        "Arabanın model yili ${modelYili}, markası: ${marka}, otomatik mi :${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null) {
      print("Arabanın yaşı ${2021 - modelYili!}");
    } else {
      print("Model yaşı hesaplanamadı");
    }
  }
}
