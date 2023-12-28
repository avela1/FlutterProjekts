import 'package:feta_social_media/constants/export_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  
  RxBool isLoading = false.obs;

  final _authController = FirebaseAuth.instance;

  void signInWithEmail(
      String email, String password, BuildContext context) async {
    isLoading.value = true;

    try {
      await _authController.signInWithEmailAndPassword(
          email: email, password: password);

      successMessage("Login Successfully");
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, '/');
    } catch (e) {
      errorMessage('Error: try again!!!');
    }
    isLoading.value = false;
  }

  void signInwithGoogle(BuildContext context) async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // creating new credential

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await _authController.signInWithCredential(credential);

      successMessage("Login Successfully");
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, '/');
    } catch (e) {
      errorMessage('Error: try again!!!');
    }
    isLoading.value = false;
  }

  void signUpwithEmail(
      String email, String password, BuildContext context) async {
    isLoading.value = true;

    try {
      await _authController.createUserWithEmailAndPassword(
          email: email, password: password);

      successMessage("Registiration Successfully");
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, '/');
    } catch (e) {
      errorMessage('Error: try again!!!');
    }
    isLoading.value = false;
  }

  void signOut(BuildContext context) async {
    await _authController.signOut();
    successMessage("Logout");
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/login_page');
  }
}
