main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(7, "yunus");
  var ali = Ogrenci(7, "ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali, emre, ali];

  tumOgrenciler.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else
      return 0;
  }); // tüm elemanları sıralar.
  print(tumOgrenciler);

  var mapList = tumOgrenciler
      .map((Person e) => "${e.id}")
      .toList(); //elemanları tek tek gez. herbir elemanıbirşeye dönüştür.Verilem ıterable to List ile çevir.
  print(mapList);

  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([ayse, ali]);

  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 3);
  print(sonuc);

  Map<int, Person> yeniMap = tumOgrenciler.asMap();
  print(yeniMap[0]!.isim);

  print(tumOgrenciler.contains(emre)); // tüm öğrenciler içinde emre var mı ?

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);
  print(sonucEvery);

  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1);
  print(bulunan);

  ///ilgili elemanı verir.

  /*  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var listeFrom = List<Ogrenci>.from(tumOgrenciler.whereType<Ogrenci>()); //
  var listOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>()); //

  var listGenerate = List<Ogrenci>.generate(
      5,
      (index) => Ogrenci(
          index, "$index", index * 2)); // her elemena tek tek müdahale edilir.

  print(listGenerate);
  print(listOf);

  var degistirilemezListe = List.unmodifiable([0, 2, 2]);
  // degistirilemezListe.add(5);
  print(degistirilemezListe.reversed); //0,1,2 olanı 2,1,0 olarak ekrana basar. */
}

class Person {
  int id = 0;
  String isim = "";
  Person(this.id, this.isim);
  @override
  String toString() {
    return "id: $id ve isim:$isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi) : super(id, isim);
  @override
  String toString() {
    return "id:$id ve isim:$isim ve alinan ders sayısı:$alinanDersSayisi\n";
  }
}
