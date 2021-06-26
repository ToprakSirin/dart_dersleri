main(List<String> args) async {
  Map<String, dynamic> gelenUser = await idyeGoreUserGetir(6);
  List<String> kurslarListesi =
      await usernameGoreKurslariGetir(gelenUser['user']);
  String yorum = await kursunIlkYorumunuGetir(kurslarListesi[0]);
  print(yorum);
}

Future<String> kursunIlkYorumunuGetir(String kursadi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs mukemmel";
  });
}

Future<List<String>> usernameGoreKurslariGetir(String userName) {
  print("$userName kullanıcısının kursları getiriliyor ");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'kotlin', 'java'];
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id idli kullanıcı getiriliyor ");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'emrealtunbilek', 'id': id};
  });
}
