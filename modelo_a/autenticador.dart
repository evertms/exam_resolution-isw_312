abstract class Autenticador {
  void login(String user, String pass);
}

class GoogleAuth implements Autenticador {
  @override
  void login(String user, String pass) {
    print('Conectando con Google...');
  }
}

void main() {
  Autenticador auth = GoogleAuth();
  auth.login("evertms", "123456");
}
