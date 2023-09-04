import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:zena_social_media/constants/export_constants.dart';

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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CO\nDE'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 80.0),
              ),
              Text(
                'Verification'.toUpperCase(),
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Text(
                'Please enter the verification code sent to ->> test@gmail.com',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Theme.of(context).colorScheme.primary,
                filled: true,
                textStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: colorBlue,
                    ),
                onSubmit: (code) {},
              ),
              const SizedBox(
                height: defaultPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
