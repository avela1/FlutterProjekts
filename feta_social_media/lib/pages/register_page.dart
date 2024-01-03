import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/export_components.dart';
import '../constants/export_constants.dart';
import '../controllers/export_controllers.dart';

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
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final AuthController _authController = Get.put(AuthController());

  @override
  void initState() {
    super.initState();
    _isPasswordVisible = true;
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.transparent,
      ),
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
                  subtitle: 'You almost done, finish your registration',
                  imagePath: logo,
                ),
                SizedBox(
                  height: Sizes.height15,
                ),
                MyTextfield(
                  controller: _emailController,
                  hintText: 'Email',
                  obscureText: false,
                  icon: Icons.people,
                ),
                MyTextfield(
                  controller: _passwordController,
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
                  controller: _confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: _isPasswordVisible,
                  icon: Icons.fingerprint,
                ),
                SizedBox(
                  height: Sizes.width20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // _authController.signUpwithEmail(_emailController.text,
                      //     _passwordController.text, context);
                      // if (_passwordController == _confirmPasswordController) {
                      //   _authController.signUpwithEmail(_emailController.text,
                      //       _passwordController.text, context);
                      // } else {
                      //   errorMessage('Password is not the same!!');
                      // }
                      Navigator.of(context).pushReplacementNamed('/otp_page');
                    },
                    child: const Text('Register'),
                  ),
                ),
                SizedBox(
                  height: Sizes.width20,
                ),
                Center(
                  child: Text(
                    'OR',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                SizedBox(
                  height: Sizes.width10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => _authController.signInwithGoogle(context),
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
                SizedBox(
                  height: Sizes.width10,
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
