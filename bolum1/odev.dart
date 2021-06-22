/*
1-Adınızı , soyadınızı ve yaşınızı farklı değişkenlerde saklayıp ,ekrana "Benim adım emre altunbilek ,yaşım 34 ve tüm ismimdeki karakter sayısı 15'tir" yazdırın
*/

/*
2-Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın örnek birinci 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12'dir.

*/
void main(List<String> args) {
  String ad = "emre";
  var soyad = "altunbilek";
  int yas = 34;

  print(
      "Benim adım $ad $soyad, yaşım $yas ve tüm ismimdeki karakter sayısı: ${ad.length + soyad.length}'tür. ");

  print(
      "Benim adım $ad $soyad, yaşım $yas ve tüm ismimdeki karakter sayısı: ${(ad + " " + soyad).length}'tür. ");

  int birinciKenar = 3;
  var ikinciKenar = 4;
  int ucuncuKenar = 5;

  print(
      "Birinci kenarı $birinciKenar, ikinci kenarı $ikinciKenar , üçüncü kenarı $ucuncuKenar olan üçgenin çevresi ${birinciKenar + ikinciKenar + ucuncuKenar}'dır.");
}
