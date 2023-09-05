import 'package:flutter/material.dart';

import '../components/export_components.dart';
import '../constants/export_constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static const String routeName = '/register_page';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const RegisterPage());
  }

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
    final confirmPasswordController = TextEditingController();
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
                  title: 'Get On Board,',
                  subtitle: 'Create your profile to star your Journey!',
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
                MyTextfield(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: _isPasswordVisible,
                  icon: Icons.fingerprint,
                ),
                const SizedBox(
                  height: buttonHeight,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('SIGNUP'),
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
                      "Already have an account? ",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushReplacementNamed(
                          context, '/login_page'),
                      child: Text(
                        'Login Now!',
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
