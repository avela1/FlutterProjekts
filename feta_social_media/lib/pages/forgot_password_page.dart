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
            padding: EdgeInsets.all(Sizes.width30),
            child: Column(
              children: [
                const HeaderLogo(
                  title: "Forgot Password",
                  subtitle:
                      "Please enter email to send a verification code to reset your password",
                  imagePath: logo,
                  textAlign: TextAlign.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  imageHeight: 0.15,
                ),
                SizedBox(
                  height: Sizes.width10,
                ),
                MyTextfield(
                  controller: controller,
                  hintText: 'Please enter email',
                  obscureText: false,
                  icon: Icons.mail_outline_rounded,
                ),
                SizedBox(
                  height: Sizes.width30,
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
