import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LikeButton extends StatelessWidget {
  LikeButton(
      {super.key,
      required this.isliked,
      required this.onTap,
      required this.likes});
  final bool isliked;
  void Function()? onTap;
  final String likes;
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: 0, end: 0),
      badgeAnimation: const badges.BadgeAnimation.slide(
        disappearanceFadeAnimationDuration: Duration(milliseconds: 200),
        curve: Curves.easeInCubic,
      ),
      badgeStyle: isliked
          ? const badges.BadgeStyle(
              badgeColor: Colors.blue,
            )
          : const badges.BadgeStyle(
              badgeColor: Colors.grey,
            ),
      badgeContent: Text(
        likes,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: onTap,
      child: IconButton(
        icon: isliked
            ? const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              )
            : const Icon(
                Icons.favorite_border,
                color: Colors.grey,
                size: 30,
              ),
        onPressed: onTap,
      ),
    );
  }
}
