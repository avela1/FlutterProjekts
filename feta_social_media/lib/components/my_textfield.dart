import 'package:flutter/material.dart';
import './../constants/export_constants.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;
  final IconData? showPassword;
  final Function()? onPressed;
  final TextStyle? hintStyle;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    this.showPassword,
    this.onPressed,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Sizes.width20),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(Sizes.width20),
          filled: true,
          hintText: hintText,
          hintStyle: hintStyle,
          
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
