main(List<String> args) {
  User user1 = User();
  user1.girisYap();
  var user2 = NormalUser();
  user2.davetEt();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  user3.girisYap();

  AdminUser user4 = AdminUser();

  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser(); //upcasting yukarı çevrim

  List<User> tumUserler = [];
  tumUserler.add(user1);
  tumUserler.add(user2);
  tumUserler.add(user3);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
}

void test(User kullanici) {   ///polimorfizm
  kullanici.girisYap();    
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("Parent user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }

  @override
  void girisYap() {
    print("Normal user giriş yaptı");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("Ben sadece okuyablirim");
  }

  @override
  void girisYap() {
    print("Sadece Okuyabilen Normal User giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("Toplam user sayısı 20");
  }
  @override
  void girisYap() {
    print("Admin User giriş yaptı");
  }
}
