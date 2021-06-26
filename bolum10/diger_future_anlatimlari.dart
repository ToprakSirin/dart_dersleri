main(List<String> args) async {
  print("Program başladı");
  Future.delayed(Duration(seconds: 0), () {
    print("Sıfır saniyelik işlem");
  });
  print("Program bitti");

  Future<int> toplam = Future(() {
    int toplam = 0;

    for (int i = 0; i < 10000; i++) {
      toplam = toplam + i;
    }
    return toplam;
    //throw Exception("Toplam hesaplanamadı");
  });
  //toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));
  int forSonuc = await toplam;
  print("********* $forSonuc");
  var f2 = Future.value('emre');
  var f3 = Future.error('hata ile biten future');

  f3.catchError((hata) => print(hata));
}
