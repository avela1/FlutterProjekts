import 'package:flutter/material.dart';
import 'package:zena_social_media/components/export_components.dart';
import 'package:zena_social_media/constants/export_constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String routeName = '/login_page';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const LoginPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final unameController = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image(
                    image: const AssetImage(googleLogo),
                    height: size.height * 0.1,
                  ),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  'Wellcome Back,',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text('Thank you for choosing us, Have a fun!',
                    style: Theme.of(context).textTheme.headlineMedium),
                MyTextfield(
                  controller: unameController,
                  hintText: 'Email or Phone number',
                  obscureText: false,
                  icon: Icons.people,
                ),
                MyTextfield(
                  controller: unameController,
                  hintText: 'Password',
                  obscureText: false,
                  icon: Icons.fingerprint,
                ),
                const SizedBox(
                  height: buttonHeight - 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: colorBlue),
                    ),
                  ),
                ),
                const SizedBox(
                  height: buttonHeight,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(
                  height: buttonHeight,
                ),
                Center(
                  child: Text(
                    'OR',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const SizedBox(
                  height: buttonHeight - 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage(googleLogo),
                          height: buttonHeight,
                        ),
                        Text(
                          '   Sigh-In with Google',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: buttonHeight - 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Register Now!',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: colorBlue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
