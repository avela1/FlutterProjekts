import 'package:flutter/material.dart';
import './../components/export_components.dart';
import './../constants/export_constants.dart';

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
  final unameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _isPasswordVisible = true;
  }

  Future<void> singIn() async {
    // showDialog(
    //   context: context,
    //   builder: (context) => const Center(
    //     child: CircularProgressIndicator(),
    //   ),
    // );
    // try {
    //   await FirebaseAuth.instance.signInWithEmailAndPassword(
    //     email: unameController.text,
    //     password: passwordController.text,
    //   );
    //   if (context.mounted) {
    //     Navigator.pop(context);
    //   }
    // } on FirebaseAuthException catch (e) {
    //   // ignore: use_build_context_synchronously
    //   Navigator.pop(context);
    //   displayMessage(e.code);
    // }
    Navigator.pushReplacementNamed(context, '/');
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
                    onPressed: singIn,
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
                    onPressed: () {},
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
