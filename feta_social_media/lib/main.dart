import 'package:flutter/material.dart';
import './config/app_router.dart';
import './constants/export_constants.dart';
import './pages/export_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your appl0ication.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: LoginPage.routeName,
    );
  }
}
