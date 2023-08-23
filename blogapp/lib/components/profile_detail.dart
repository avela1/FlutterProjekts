import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  final String detail;
  final String description;
  final Function()? onTap;
  const ProfileDetail(
      {super.key, required this.detail, required this.description, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontStyle: FontStyle.italic,
                ),
              ),
              IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.edit_square,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          Text(detail),
        ]),
      ),
    );
  }
}
