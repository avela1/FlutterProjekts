import 'package:flutter/material.dart';

class PostTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon1;
  final IconData? icon2;
  final IconData? icon3;
  final Function()? onPressed;
  final Function()? onPressed2;
  final Function()? onPressed3;
  final TextStyle? hintStyle;

  const PostTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon1,
    this.icon2,
    this.icon3,
    this.hintStyle,
    this.onPressed,
    this.onPressed2,
    this.onPressed3,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
