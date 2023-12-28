import 'package:flutter/material.dart';
import './../pages/export_pages.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // ignore: avoid_print
    print('This route is ${settings.name}');
    switch (settings.name) {
      case '/':
        return HomePage.route();
      // ignore: unreachable_switch_case
      case HomePage.routeName:
        return HomePage.route();
      case LoginPage.routeName:
        return LoginPage.route();
      case RegisterPage.routeName:
        return RegisterPage.route();
      case OTPPage.routeName:
        return OTPPage.route();
      case ForgotPaswordPage.routeName:
        return ForgotPaswordPage.route();
      case CommentPage.routeName:
        return CommentPage.route();
      case RegistrationPage.routeName:
        return RegistrationPage.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error: Page not Found.'),
        ),
      );
    });
  }
}
