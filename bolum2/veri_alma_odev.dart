/*
Örnek 1: İki notu girilen öğrencinin ortalamasını bularak sonucu ekranda gösteren algoritmayı yapın

Örnek 2: Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algoritmayı yazın.


 */

import 'dart:io';

main(List<String> args) {
  //cevap1
  print("Birinci notu girniz");
  int birinciNot = int.parse(stdin.readLineSync()!);

  print("İkinci notu griniiz");
  int ikinciNot = int.parse(stdin.readLineSync()!);

  double sonuc = (birinciNot + ikinciNot) / 2;
  print("Ortalamınız $sonuc");

  //cevap2
  print("Fiyat Giriniz ");
  int fiyat = int.parse(stdin.readLineSync()!);
  double sonFiyat = (fiyat * 18) / 100 + fiyat;
  print("Son fiyat $sonFiyat");
}
