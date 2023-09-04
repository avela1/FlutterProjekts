import 'package:flutter/material.dart';
import 'package:zena_social_media/components/export_components.dart';
import 'package:zena_social_media/constants/export_constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routeName = '/login_page';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const LoginPage(),
    );
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool _isPasswordVisible;

  @override
  void initState() {
    super.initState();
    _isPasswordVisible = true;
  }

  @override
  Widget build(BuildContext context) {

    final unameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderLogo(
                  title: 'Wellcome Back,',
                  subtitle: 'Thank you for choosing us, Have a fun!',
                  imagePath: googleLogo,
                ),
                MyTextfield(
                  controller: unameController,
                  hintText: 'Email or Phone number',
                  obscureText: false,
                  icon: Icons.people,
                ),
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: _isPasswordVisible,
                  icon: Icons.fingerprint,
                  showPassword: _isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                const SizedBox(
                  height: buttonHeight - 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      ForgotPasswordCard.forgorPasswordCard(context);
                    },
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
                    child: const Text('LOGIN'),
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
                      onTap: () => Navigator.pushReplacementNamed(
                          context, '/register_page'),
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
