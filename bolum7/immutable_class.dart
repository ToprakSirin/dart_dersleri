main(List<String> args) {
  const Student emre = Student(5, "emre");
  const Student emre2 = Student(5, "emre");
  var emre3 = const Student(5, "emre");
  
  if (emre == emre2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
