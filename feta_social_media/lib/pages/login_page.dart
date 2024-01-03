import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './../components/export_components.dart';
import './../constants/export_constants.dart';
import './../controllers/export_controllers.dart';

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
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
  }

  void displayMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Sizes.width20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderLogo(
                  title: 'Wellcome Back,',
                  subtitle: 'Thank you for choosing us, Have a fun!',
                  imagePath: logo,
                  imageColor: colorDanger,
                ),
                SizedBox(
                  height: Sizes.height10,
                ),
                MyTextfield(
                  controller: _emailController,
                  hintText: 'Email ',
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
                SizedBox(
                  height: Sizes.height10,
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
                SizedBox(
                  height: Sizes.width10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _authController.signInWithEmail(
                        _emailController.text,
                        _passwordController.text,
                        context),
                    // onPressed: () => singIn(),
                    child: const Text('LOGIN'),
                  ),
                ),
                SizedBox(
                  height: Sizes.width10,
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
                        Image(
                          image: const AssetImage(googleLogo),
                          height: Sizes.width20,
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
                      "Don't have an account? ",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushReplacementNamed(
                          context, '/registration_page'),
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
