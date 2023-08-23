import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final IconData icon;
  const MyListTile(
      {super.key, required this.text, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      onTap: onTap,
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
