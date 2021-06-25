main(List<String> args) {
  Veritabani db = OracleDb();
  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
  void urunGuncelle();
}

class OracleDb extends Veritabani {
  @override
  void userDelete() {
    print("Oracle dbden user silindi");
  }

  @override
  void userSave() {
    print("Oracle dbye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("Oracle dbdeki user güncellendi");
  }

  @override
  void urunGuncelle() {
   print("Urun güncellendi");
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("Firebase dbden user silindi");
  }

  @override
  void userSave() {
    print("Firebase dbye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("Firebase dbdeki user güncellendi");
  }
   @override
  void urunGuncelle() {
   print("Urun güncellendi");
  }
}
