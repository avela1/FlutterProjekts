import 'package:flutter/material.dart';
import './../components/export_components.dart';
import './../constants/sizes.dart';

class ForgotPasswordCard {
  static Future<dynamic> forgorPasswordCard(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Sizes.width20),
                topRight: Radius.circular(Sizes.width20))),
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(Sizes.width20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'How To Reset your password?',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                'Select one of the option below to reset your password.',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              PasswordResetMethodCard(
                icon: Icons.mail_outline_rounded,
                title: "E-Mail",
                description: 'Reset via mail verification',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/forgot_password');
                },
              ),
              PasswordResetMethodCard(
                icon: Icons.mobile_friendly_rounded,
                title: "Phone No",
                description: 'Reset via phone verification',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/otp_page');
                },
              )
            ]),
          );
        });
  }
}
