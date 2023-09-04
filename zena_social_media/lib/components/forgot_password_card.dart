import 'package:flutter/material.dart';
import 'package:zena_social_media/components/export_components.dart';
import 'package:zena_social_media/constants/sizes.dart';

class ForgotPasswordCard {
  static Future<dynamic> forgorPasswordCard(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultPadding),
                topRight: Radius.circular(defaultPadding))),
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(children: [
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
              const PasswordResetMethodCard(
                icon: Icons.mobile_friendly_rounded,
                title: "Phone No",
                description: 'Reset via phone verification',
              )
            ]),
          );
        });
  }
}
