import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('home page'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/login_page'),
            child: const Text(
              'Login',
            ),
          ),
        ],
      ),
    );
  }
}
