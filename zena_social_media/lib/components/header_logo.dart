import 'package:flutter/material.dart';
import 'package:zena_social_media/constants/sizes.dart';

class HeaderLogo extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final double imageHeight;
  final double? heightBetween;
  final Color? imageColor;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;
  const HeaderLogo({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.imageHeight = 0.1,
    this.heightBetween = defaultPadding,
    this.imageColor,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Center(
          child: Image(
            image: AssetImage(imagePath),
            height: size.height * imageHeight,
          ),
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: textAlign,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: textAlign,
        ),
      ],
    );
  }
}
