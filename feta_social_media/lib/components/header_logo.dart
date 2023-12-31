import 'package:feta_social_media/constants/export_constants.dart';
import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final double imageHeight;
  final Color? imageColor;
  final TextAlign? textAlign;
  final CrossAxisAlignment crossAxisAlignment;
  const HeaderLogo({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.imageHeight = 0.15,
    this.imageColor = colorDanger,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Center(
          child: Image(
            image: AssetImage(imagePath),
            color: imageColor,
            height: Sizes.screenHeight * imageHeight,
          ),
        ),
        SizedBox(height: Sizes.width10),
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
