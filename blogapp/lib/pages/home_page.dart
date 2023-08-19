import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void signout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home page',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: signout,
          ),
        ],
      ),
    );
  }
}
