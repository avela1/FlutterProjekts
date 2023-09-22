import 'package:flutter/material.dart';
import './../components/export_components.dart';
import './../constants/export_constants.dart';

class ForgotPaswordPage extends StatelessWidget {
  const ForgotPaswordPage({super.key});

  static const String routeName = '/forgot_password';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const ForgotPaswordPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: Theme.of(context).iconTheme,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const HeaderLogo(
                  title: "Forgot Password",
                  subtitle:
                      "Please enter email to send a verification code to reset your password",
                  imagePath: logo,
                  textAlign: TextAlign.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  imageHeight: 0.2,
                ),
                MyTextfield(
                  controller: controller,
                  hintText: 'Please enter email',
                  obscureText: false,
                  icon: Icons.mail_outline_rounded,
                  padding: defaultPadding,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('SUBMIT'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
