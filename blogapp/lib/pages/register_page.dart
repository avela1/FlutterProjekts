import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/mybutton.dart';
import '../components/mytextfield.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<void> register() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    if (passwordController.text != confirmPasswordController.text) {
      Navigator.pop(context);
      displayMessage('Password does not match');
      return;
    }
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      FirebaseFirestore.instance
          .collection('Users')
          .doc(userCredential.user!.email)
          .set({
        'username': emailController.text.split('@')[0],
        'bio': 'Empty username..."',
        'about': 'Empty about...',
        'hobbies': 'Empty hobbies...'
      });
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      displayMessage(e.code);
    }
  }

  void displayMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(children: [
              const SizedBox(
                height: 75,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Wellcome back',
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: emailController,
                obscureText: false,
                hintText: "please enter email",
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordController,
                obscureText: true,
                hintText: "please enter password",
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: confirmPasswordController,
                obscureText: true,
                hintText: "please confirm password",
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                btnText: 'Register',
                onTap: register,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "I have an account? Instead ",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  InkWell(
                    onTap: widget.onTap,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        )),
      ),
    );
  }
}
