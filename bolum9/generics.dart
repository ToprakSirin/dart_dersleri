main(List<String> args) {
  List<String> liste = [];
  liste.add("emre");
  liste.add("aaasw");

  yazdir(liste);
}

// List<E> ==> Element
//Map<K> ==> Key
//Map<K, V> ==< Value
//R==> Methodların return tipleri için

//Ogrenci<T extends Insan>
yazdir(List list) {
  print(list[1].length);
}
