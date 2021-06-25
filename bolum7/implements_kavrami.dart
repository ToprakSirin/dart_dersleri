main(List<String> args) {}

abstract class Hayvan {
  void soyutOlmayanMetot(){
    
  }
}

abstract class Ucabilenler {
  void fly();
  void test() {
    print("test");
  }
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

class kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {
    
  }

  @override
  void test() {
    // TODO: implement test
  }
}

class Insan implements Kosabilenler {
  @override
  void run() {
    // TODO: implement run
  }
}
