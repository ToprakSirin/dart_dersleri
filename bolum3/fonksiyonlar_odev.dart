/**
 1-- Paramtre olarak bir tane int sayı alan fonksiyon yazınız.Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün.

 2-- Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı Eğer PI sayısı verilmediyse varsayılan olarak 3,14 olarak hesaplama yapınız.(PI : 3.14)

 3--Bir üçgenin kenarlarını isimlendirilmiş paramtre olarak alan fonksiyon yazınız.Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu ekranna yazdırsın. geriye bir değer döndürmesin.


 */

main(List<String> args) {
  int toplam = ciftSayilarinToplaminiBul(10);
  print("Toplam : $toplam");

  double daireAlan = daireAlanHesapla(2);
  print("Alan : $daireAlan");
  double daireAlan2 = daireAlanHesapla(2, 3);
  print("Alan : $daireAlan2");

  ucgeninCesidiSoyle(birinciKenar: 3, ikinciKenar: 4, ucuncuKenar: 4);
}

int ciftSayilarinToplaminiBul(int sayi) {
  int toplam = 0;

  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam = toplam + i;
    }
  }

  return toplam;
}

double daireAlanHesapla(double yariCap, [double piSayisi = 3.14]) {
  return piSayisi * yariCap * yariCap;
}

void ucgeninCesidiSoyle(
    {int birinciKenar = 1, int ikinciKenar = 1, int ucuncuKenar = 1}) {
  if (birinciKenar == ikinciKenar && birinciKenar == ucuncuKenar) {
    print("Bu üçgen eş kenardır");
  } else if (birinciKenar == ikinciKenar ||
      birinciKenar == ucuncuKenar ||
      ikinciKenar == ucuncuKenar) {
    print("Bu üçgen ikizkenardır");
  } else {
    print("Bu üçgen çeşit kenardır");
  }
}
