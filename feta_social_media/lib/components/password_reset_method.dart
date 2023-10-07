import 'package:flutter/material.dart';
import './../constants/sizes.dart';

class PasswordResetMethodCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Function()? onTap;
  const PasswordResetMethodCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(Sizes.width10),
          margin: EdgeInsets.only(top: Sizes.width20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.width10),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                size: Sizes.height50,
              ),
              SizedBox(
                width: Sizes.width10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
