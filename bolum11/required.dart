int ucSayiTopla({required int ilk, required int ikinci,required int ucuncu}) {
  return ilk + ikinci + ucuncu;
}

main(List<String> args) {
  final toplam = ucSayiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  final toplam2 = ucSayiTopla(ilk: 1, ikinci: 2,ucuncu: 5);
  final toplam3 = ucSayiTopla(ilk: 1, ikinci: 2,ucuncu: 3);
}
