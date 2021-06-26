/**
 * 1- Bir fonksiyon yazın bu fonksiyon aldığı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 saniye sonunda sonuçlanacaktır ve getirilen kişi bilgisi map olarak alınacaktır. Bu map yapısında username ve id bilgisi olması yeterlidir.
 *  Getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir fonksiyon yazın  .Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektirç
 * 
 * Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonkdiyon yazın Bu fonksiyon 1 saniye sürecektir.
 * 

 * 
 */
main(List<String> args) {
  idyeGoreUserGetir(5).then((Map value) {
    print(value);
    usernameGoreKurslariGetir(value['username']).then((List kurslarListesi) {
      print(kurslarListesi);
      String ilKurs = kurslarListesi[0];
      kursunIlkYorumunuGetir(ilKurs).then((String yorum) {
        print(yorum);
      });
    });
  });
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
