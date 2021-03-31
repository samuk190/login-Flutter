import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vigilanciapolicial/app/modules/shared/auth/repositories/auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future getEmailPassword() {
    // TODO: implement getEmailPassword
    throw UnimplementedError();
  }

  @override
  Future getFacebook() {
    // TODO: implement getFacebook
    throw UnimplementedError();
  }

  @override
  Future<User?> getGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final User user = (await _auth.signInWithCredential(credential)).user!;
    print("signed In" + user.displayName!);
    return user;
  }

  @override
  Future<String> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  Future<User?> getUser() {
    // TODO: implement getUser last auth state
    return FirebaseAuth.instance.authStateChanges().last;
  }
}
