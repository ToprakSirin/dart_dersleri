import 'musteri.dart';
import 'veritabanı_islemleri.dart';

main(List<String> args) {
  Musteri m1 = Musteri(150);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 952;
  m1.musteriNoSoyle;
  print(m1.musteriNoSoyle);

  VeritabaniIslemleri db = VeritabaniIslemleri();
  db.baglan();

  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.loginWithNameandPassword("emre2", "123");

  bool sonuc = db.baglan();
  if (sonuc) {
    print("Bağlandım");
  } else {
    print("Bağlanamadı");
  }
}
