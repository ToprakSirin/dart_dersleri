void main(List<String> args) {
  sayilariTopla();
  int fark = sayilariCikar(15, 4);
  print("fark $fark");

  print("çarpım:" + sayilariCarp(12, 6).toString());

  print("maxOlan:" + maxOlaniBul(15, 10).toString());
  print("minOlan:" + minOlaniBul(15, 10).toString());
}

void sayilariTopla() {
  int sayi1 = 10, sayi2 = 5;
  print("Toplam: ${sayi1 + sayi2}");
}

int sayilariCikar(int s1, int s2) {
  return s1 - s2;
}

int sayilariCarp(int s1, int s2) => s1 * s2;

int maxOlaniBul(int s1, int s2) => s1 < s2 ? s2 : s1;

int minOlaniBul(int s1, int s2) => s1 > s2 ? s2 : s1;
