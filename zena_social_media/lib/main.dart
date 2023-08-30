import 'package:flutter/material.dart';
import 'package:zena_social_media/config/app_router.dart';
import 'package:zena_social_media/constants/const_exports.dart';
import 'package:zena_social_media/pages/page_exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
