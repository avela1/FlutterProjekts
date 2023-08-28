import 'package:blogapp/auth/auth_page.dart';
import 'package:blogapp/firebase_options.dart';
import 'package:blogapp/theme/dark_theme.dart';
import 'package:blogapp/theme/light_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: dartTheme,
      home: const AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
