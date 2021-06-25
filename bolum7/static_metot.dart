main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();

  Matematik m2 = Matematik(30, 10);
  m2.topla();

  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();

  print("Toplam işlem sayısı ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  //instance variable
  int birinciSayi = 0;
  int ikinciSayi = 0;

  //class varable, sınıf değişkeni
  static int toplamIslemSayisi = 0;
  static double PI = 3.14;
  static void sinifAdiniSoyle() {
    print("Ben matematik sınıfıyım");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    toplamIslemSayisi++;
    print("Toplam ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("Çıkarma ${birinciSayi - ikinciSayi}");
  }
}
