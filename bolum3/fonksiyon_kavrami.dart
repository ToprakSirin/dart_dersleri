void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(5, 10);
  print("alan $sonuc");

  int hacimSonuc = hacimHesapla(8, 9, 10);
  print("hacim $hacimSonuc");
  print(hacimHesapla(5, 8, 10));

}

//parametresiz
void cevreyiHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print("Çevre $cevre");
}

//parametre alan fonksiyon
int alanHesapla(int sayi1, int sayi2) {
  //print("alan ${sayi1 * sayi2}");

  return sayi1 * sayi2;
}
//Hacim hesaplayan fonksiyon

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}
