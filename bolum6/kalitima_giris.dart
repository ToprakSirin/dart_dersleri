main(List<String> args) {
  User user1 = User();
  user1.girisYap();
  NormalUser normal1 = NormalUser();
  normal1.davetEt();
  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();
  user.girisYap();

  
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
    print("Sadece Okuyabilen Norma lUser giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("Toplam user sayısı 20");
  }
}
