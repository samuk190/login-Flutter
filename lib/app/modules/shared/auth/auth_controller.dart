import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:vigilanciapolicial/app/modules/shared/auth/repositories/auth_repository_interface.dart';

class AuthController extends NotifierStore<Exception, Future<User?>> {
  final IAuthRepository _authRepository = Modular.get();

  //Pode sim ser nullo
  User? user;

  AuthController(Future<User?> initialState) : super(initialState);

// estado  setUser(User value) => user = value;

  _AuthControllerBase() {
    //falta adicionar .then
    update(_authRepository.getUser());
  }
 update(_authRepository.getUser());
  Future loginWithGoogle() async {
    user = _authRepository.getGoogle() as User?;

  }
}
