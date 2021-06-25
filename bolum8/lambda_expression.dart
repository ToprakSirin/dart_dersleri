main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  fonksiyon1(5, 8);
  String isim = "emre";
  var f2 = (int s) => s * 2;

  var f3 = (int s2) {
    return s2 * 1;
  };
  var sayi = f2(5);
  print(sayi);
  print(f3(4));
}

void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
