import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:vigilanciapolicial/app/modules/shared/auth/auth_controller.dart';

class LoginController extends NotifierStore<Exception, int> {
  LoginController() : super(0);
  final AuthController auth = Modular.get();

  loginWithGoogle() async {
    setLoading(false);
    try {
      setLoading(true);

      await auth.loginWithGoogle();
    } catch (e) {
      setLoading(false);
    }
  }
}
