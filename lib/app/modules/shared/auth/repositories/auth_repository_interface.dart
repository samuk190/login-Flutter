import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthRepository {
  Future<User?> getUser();
  Future getFacebook();
  Future<User?> getGoogle();
  Future getEmailPassword();
  Future<String> getToken();
}
