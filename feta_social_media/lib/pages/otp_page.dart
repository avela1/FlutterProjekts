import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import './../constants/export_constants.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});
  static const String routeName = '/otp_page';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const OTPPage(),
    );
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(Sizes.width30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image(
                      image: const AssetImage(logo),
                      color: colorDanger,
                      height: Sizes.height200,
                    ),
                    Text(
                      'CO\nDE'.toUpperCase(),
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: Sizes.height80, color: colorDanger),
                    ),
                  ],
                ),
                SizedBox(
                  height: Sizes.width10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verification'.toUpperCase(),
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      'Please enter the verification code sent to ->> test@gmail.com',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
                SizedBox(
                  height: Sizes.width20,
                ),
                OtpTextField(
                  mainAxisAlignment: MainAxisAlignment.center,
                  numberOfFields: 6,
                  fillColor: Theme.of(context).colorScheme.primary,
                  filled: true,
                  textStyle:
                      Theme.of(context).textTheme.headlineLarge!.copyWith(
                            color: colorBlue,
                          ),
                  onSubmit: (code) {},
                ),
                SizedBox(
                  height: Sizes.width20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
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
