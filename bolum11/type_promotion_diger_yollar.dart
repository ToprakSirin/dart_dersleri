int karakterSayisiniBul(String? metin) {
  if (metin == null) {
    throw Exception('metin null');
    //return 0;
  }
  return metin.length;
}

main(List<String> args) {
  print(karakterSayisiniBul('emre'));
}
