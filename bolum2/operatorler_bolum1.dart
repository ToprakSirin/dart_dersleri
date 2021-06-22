main(List<String> args) {
  double sayi1 = 9;
  double sayi2 = 6;

//Aritmetik Operatörler
  print("$sayi1 + $sayi2 toplamı ${sayi1 + sayi2}");
  print("$sayi1 - $sayi2 toplamı ${sayi1 - sayi2}");
  print("$sayi1 * $sayi2 toplamı ${sayi1 * sayi2}");
  print("$sayi1 / $sayi2 toplamı ${sayi1 / sayi2}");
  print("$sayi1 % $sayi2 toplamı ${sayi1 % sayi2}");

//Atama ve Karşılaştırma

  double sayi3 = 5;
  sayi3 = sayi3 + 5;
  print(sayi3);

  sayi3 += 5; // sayi3= sayi3+5
  print(sayi3);

  sayi3 %= 4;
  print(sayi3);

  // <,>, <=,>=, ==,|=

  double sayi4 = 9;
  double sayi5 = 5;

  if (sayi4 <= sayi5) {
  } else {
    print("Sayi $sayi4 KÜÇÜK VE EŞİT DEĞİLDİR $sayi5");
  }

  String isim = "emre";
  String soyIsim = "altunbilek";

  if (isim != soyIsim) {
    print("isim ve soyisimle aynı değil");
  } else {
    print("isim ve soyisim aynı değere sahip");
  }

//Mantıksal Operatörler
// &&, || ,!

//Java ve kotlin bilen == hem javayı hem kotlini bilecek , herhangi biri bilmiyorsa şart sağlanmaz.
//Java veya kotlin bilen ==> bu dillerden sadece birini veya her ikisini bilmesi gerekir.
  bool kosul1 = true;
  bool kosul2 = false;

  print(kosul1 && kosul2);
  print(kosul1 || kosul2);
  print(!kosul1);
}
