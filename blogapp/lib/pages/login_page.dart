import 'package:blogapp/components/mybutton.dart';
import 'package:blogapp/components/mytextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, this.onTap});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      if (context.mounted) {
        Navigator.pop(context);
      }
    } on FirebaseAuthException catch (e) {
      // ignore: use_build_context_synchronously
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
              MyButton(
                btnText: 'Login',
                onTap: login,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  InkWell(
                    onTap: widget.onTap,
                    child: const Text(
                      'Register Now!',
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
