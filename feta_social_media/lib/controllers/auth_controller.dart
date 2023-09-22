import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final _authController = FirebaseAuth.instance;
  late Stream<User?> _userStream;

  Stream<User?> get userStream => _userStream;

  AuthController() {
    _userStream = _authController.userChanges();
  }

  Future<void> signIn(String email, String password) async {
    try {
      await _authController.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      // ignore: avoid_print
      print('error:$e');
    }
  }

  Future<void> signOut() async {
    await _authController.signOut();
  }
}
