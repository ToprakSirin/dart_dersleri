class MyStack {
  List _listem = [];

  push(yenEleman) {
    _listem.add(yenEleman);
  }

  pop() {
    return _listem.removeLast();
  }
}

class IntMyStack {
  List<int> _listem = <int>[];

  void push(int yenEleman) {
    _listem.add(yenEleman);
  }

  int pop() {
    return _listem.removeLast();
  }
}

class StringMyStack {
  List<String> _listem = <String>[];

  void push(String yenEleman) {
    _listem.add(yenEleman);
  }

  String pop() {
    return _listem.removeLast();
  }
}

class GenericStack<T> {
  List<T> _listem = <T>[];
   void push(T yenEleman) {
    _listem.add(yenEleman);
  }

  T pop() {
    return _listem.removeLast();
  }
}
