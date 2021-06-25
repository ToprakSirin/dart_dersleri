main(List<String> args) {
  Sekil s1 = Kare(3);
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  Sekil s2 = Dikdortgen(4, 6);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  List<Kare> tumKareler = [];
  List<Dikdortgen> tumDikdortgenler = [];
  List<Sekil> tumSeiller = [];
  tumSeiller.add(s1);
  tumSeiller.add(s2);

  test(s1);
  test(s2);
}

void test(Sekil sekil) {
  sekil.selamla();
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla() {
    print("Ben sekil sınıfındanım");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    print("Ben kare sınıfındanım");
  }
}

class Dikdortgen extends Sekil {
  int a;
  int b;
  Dikdortgen(this.a, this.b);
  @override
  double alanHesapla() {
    return a * b.toDouble();
  }

  @override
  double cevreHesapla() {
    return (a + b) * 2.toDouble();
  }

  @override
  void selamla() {
    print("Ben dikdortgen sınıfındanım");
  }
}
