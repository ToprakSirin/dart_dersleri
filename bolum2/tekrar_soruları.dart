/**
 1-- 3 tane double değişken oluşturup bunların ortalamasını yazdıran program
 2-- Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
 3-- Vize ve final notlarını alıp dersi geçip geçmediğini bulan program(geçne notu alt değeri=50, vizenin %40 fina =%60)


 4-- Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
 5-- 1'den 100' e kadar olan ve 15 ile tam bölünene sayıların karelerini ekrana yazdırınız.
 6--Tanımlanan int bir sayının faktöriyelini bulan uygulama yazınız.
 */

main(List<String> args) {
  //cevap 1

  double s1, s2, s3;
  s1 = 12;
  s2 = 14;
  s3 = 15;

  print("Girilen $s1, $s2 ve $s3 sayıların ortalaması ${(s1 + s2 + s3) / 3}");

  //cevap 2

  int kenar1 = 6, kenar2 = 4, kenar3 = 4;

  if ((kenar1 == kenar2) && (kenar1 == kenar3)) {
    print("Kenarları girilen üçgen eşkenar üçgen");
  } else if ((kenar1 != kenar2) && (kenar1 != kenar3) && (kenar2 != kenar3)) {
    print("Çeşit kenar üçgendir");
  } else {
    print("İkiz Kenar Üçgendir");
  }

  //cevap 3
  double vizeNotu = 35;
  double finalNotu = 72;
  double hesaplananNot = 0;

  hesaplananNot = ((vizeNotu * 40) + (finalNotu * 60)) / 100;
  if (hesaplananNot >= 50) {
    print("Tebrikler,$hesaplananNot ile bu dersi geçtiniz");
  } else {
    print("Malesed ,$hesaplananNot ile bu dersten kaldınız");
  }

  //cevap 4
  for (int i = 1; i <= 5; i++) {
    print("$i.inci döngüde ismim :Şirin Toprak");
  }

  int kontrol = 0;
  while (kontrol < 5) {
    print("${kontrol + 1}.inci döngüde ismim :Şirin Toprak");
    kontrol++;
  }
  int kontrol1 = 0;
  do {
    print("${kontrol1 + 1}.inci döngüde ismim :Şirin Toprak");
    kontrol1++;
  } while (kontrol1 < 5);

  //cevap 5
  for (int i = 0; i < 100; i++) {
    if ((i % 3 == 0) && (i % 5 == 0)) {
      print("15e tam bölünebilen $i nin karesi ${i * i}");
    }
  }

  //cevap 6

  int sayi = 6;
  int sonuc = 1;
  int sayac = 1;

  while (sayac <= sayi) {
    sonuc = sonuc * sayac;
    sayac++;
  }
  print("Girdiğiniz $sayi sayısının faktoriyeli : $sonuc");
}
