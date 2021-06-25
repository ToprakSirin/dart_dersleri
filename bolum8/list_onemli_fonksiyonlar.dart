main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(7, "yunus");
  var ali = Ogrenci(7, "ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali];

  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
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
  print(degistirilemezListe.reversed); //0,1,2 olanı 2,1,0 olarak ekrana basar.
}

class Person {
  int id = 0;
  String isim = "";
  Person(this.id, this.isim);
  @override
  String toString() {
    return "id: $id ve isim:$isim";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi) : super(id, isim);
  @override
  String toString() {
    return "id:$id ve isim:$isim ve alinan ders sayısı:$alinanDersSayisi";
  }
}
