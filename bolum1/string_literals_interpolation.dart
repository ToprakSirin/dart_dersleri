void main(List<String> args) {
  String isim = "emre";
  String soyIsim = 'altunbilek';
  var kurs = 'Dart\'ın Kullanımı';
  String kursTanimi = "Dart'ı ve Flutter'ı öğreneceğiz";

  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("soyadım olan $soyIsim'te bulunan karakter sayısı:" +
      soyIsim.length.toString());
  print("Karakter sayısı ${soyIsim.length}");
  print("adım olan $isim'de bulunan karakter sayısı:" + isim.length.toString());
  print("Karakter sayısı ${isim.length}");

  double en = 10;
  double boy = 12;

  print("Eni $en ve boyu $boy olan dikdörtgenin alanı: $en*$boy");
  print("Eni $en ve boyu $boy olan dikdörtgenin alanı: ${en * boy}");
  print(15.9.toInt());
  print("Eni ${en.toInt()} ve boyu ${boy.toInt()} olan dikdörtgenin alanı: ${en.toInt() * boy.toInt()}");

}
