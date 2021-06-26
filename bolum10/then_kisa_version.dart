import 'dart:io';

main(List<String> args) {
  print("Anne çocugu ekmek almaya yollar");
  print("Çocuk ekmek almak için evden çıkar");
  uzunSurenIslem()
  .then((value) => print(value))
  .catchError((hata)=>print(hata))
  .whenComplete(() => print("Ekmek alma operasyonu bitti "));
  print("Peynir zeytin hazırlanır.");
  print("Kahvaltı hazır");
}

Future<String> uzunSurenIslem() {
  return Future<String>.delayed(Duration(seconds: 10), () {
    return "Çocuk ekmekle eve döner";
  });
}
