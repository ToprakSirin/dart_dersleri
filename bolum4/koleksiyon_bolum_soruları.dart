/*
1- Şehirleri tutan bir liste oluştuurn, 4 tane il ekleyip sırasıyla ekrana yazdırın.

//cevap 1
main(List<String> args) {
  List<String> sehirler = List.filled(4, '');
  sehirler[0] = 'bursa';
  sehirler[1] = 'ankara';
  sehirler[2] = 'izmir';
  sehirler[3] = 'istanbul';

  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
  }
}


2- Keyleri string, değerleri dynamic olan bir map oluşturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını,ram miktarını ve ssd olup olmadığı bilgisini tutun ve kerna yazdırın.
//cevap 2
main(List<String> args) {
  Map<String, dynamic> bilgi = {};
  bilgi['cekirdek_sayisi'] = 16;
  bilgi['ram_miktari'] = 8;
  bilgi['ssd_var_mi'] = true;
  print("Bilgisayar Bilgileri");
  for (var oankiEntry in bilgi.entries) {
    print("${oankiEntry.key}: ${oankiEntry.value}");
  }
}

3- Her bir elemanında keyleri string , value'leri dynamic map olan bir liste oluşturun.
Bu listedeki her bir eleman il adını , ilçe sayısını, plaka kodunu tutsun.Sonrasında da bu listeyi okunakllı bir şekilde yazdırn.
main(List<String> args) {
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = <String, dynamic>{};
  eklenecekSehir1['il_adi'] = 'ankara';
  eklenecekSehir1['ilce_sayisi'] = 10;
  eklenecekSehir1['plaka_kodu'] = 6;
  Map<String, dynamic> eklenecekSehir2 = Map<String, dynamic>();
  eklenecekSehir2['il_adi'] = 'bursa';
  eklenecekSehir2['ilce_sayisi'] = 6;
  eklenecekSehir2['plaka_kodu'] = 16;
  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3['il_adi'] = 'istanbul';
  eklenecekSehir3['ilce_sayisi'] = 16;
  eklenecekSehir3['plaka_kodu'] = 34;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({'il_adi': 'izmir', 'ilce_sayisi': 9, 'plaka_kodu': 35});

  print(iller[0]['il_adi']);
  print(iller[2]['ilce_sayisi']);

  for (int i = 0; i < iller.length; i++) {
    var oankiSehirMapYapisi = iller[i];
    print(
        "Listenin ${i + 1}.elemanında bulunan sehir adı: ${oankiSehirMapYapisi['il_adi']}ilce sayısı: ${oankiSehirMapYapisi['ilce_sayisi']} plaka kodu :${oankiSehirMapYapisi['plaka_kodu']}");
  }
}

4- 5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50'ye rastgele şekilde oluşturulsun.Bu elemanları tek bir listeye aktarın.Oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın.


import 'dart:math';

main(List<String> args) {
  List<int> liste1 = List.filled(5, 0);
  var liste2 = List<int>.filled(5, 0);
  List<int> sonListe = <int>[];
  var sonSetyapisi = <int>{};
  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }
  print(liste1);
  print(liste2);

  sonListe = [...liste1, ...liste2];
  print(sonListe);

  for (var gecici in sonListe) {
    sonSetyapisi.add(gecici * gecici);
  }
  print(sonListe);
  print(sonSetyapisi);
}

5- Kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun , kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.


*/

import 'dart:io';

main(List<String> args) {
  int girilenNot = 0;
  List<int> girilenNotlar = List.empty(growable: true);
  do {
    print("Lütfen notunuzu giriniz, çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);
  print("Kaç tane not girildi ${girilenNotlar.length}");
  double ortalama = listeninOrtalamasiniBul(girilenNotlar);
  print("Notların ortalaması $ortalama");
}

double listeninOrtalamasiniBul(List<int> liste) {
  int toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }
  return toplam / liste.length;
}
