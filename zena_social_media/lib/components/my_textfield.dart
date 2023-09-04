import 'package:flutter/material.dart';
import 'package:zena_social_media/constants/export_constants.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final IconData? showPassword;
  final Function()? onPressed;
  final double padding;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    this.showPassword,
    this.onPressed,
    this.padding = buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: buttonHeight),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(padding),
          filled: true,
          hintText: hintText,
          fillColor: Theme.of(context).colorScheme.primary,
          prefixIcon: Icon(
            icon,
            color: Theme.of(context).colorScheme.secondary,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              showPassword,
              color: Theme.of(context).colorScheme.secondary,
            ),
            onPressed: onPressed,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
