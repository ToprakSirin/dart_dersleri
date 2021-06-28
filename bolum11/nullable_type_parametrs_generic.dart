main(List<String> args) {
  List<String> stringListesi = ['emre', 'hasan', 'ali'];
  List<String>? nullOlabilecekStringListesi;
  List<String?> nullOlabilecekStringLeriTutanListe = ['emre', null, 'hasan'];

  print('string listesi $stringListesi');
  print('null olabilecek liste $nullOlabilecekStringListesi ');
  print(
      'nullOlabilecekStringLeriTutanListe $nullOlabilecekStringLeriTutanListe');
  print(stringListesi);
}
