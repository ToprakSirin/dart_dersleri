import 'asenkron_programlama.dart';

main(List<String> args) {
  print("Anne çocugu ekmek almaya yollar");
  print("Çocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti"));
  print("Peynir zeytin hazırlanır.");
  print("Kahvaltı hazır");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "Çocuk ekmekle eve girer";
    //throw Exception("Bakkalda ekmek kalmamış");
  });

  return sonuc;
}
