//Arttırma ve Azaltma Operatörleri

main(List<String> args) {
  int sayi1 = 10;
  sayi1 = sayi1 + 1;
  sayi1 += 5; // sayi1= sayi +5

  sayi1++;
  print(sayi1);

  int sayi2 = 10;
  print(sayi2++);
  print(++sayi2);

//İşlem Önceliği
  int s1 = 10, s2 = 5;
  double sonuc = 0;

  sonuc = ((s1 + s2 * 3 - s2) + s2 - s1 * 5 + s1).toDouble();
  print(sonuc);

  sonuc = (s1 * s2 + 4 / 2) + s1++ * s2 + (++s2);
  print(sonuc);
}
