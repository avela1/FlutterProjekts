import 'package:feta_social_media/constants/export_constants.dart';
import 'package:feta_social_media/models/export_model.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final Story storyData;
  const StoryCard({
    super.key,
    required this.storyData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.height80,
      height: double.infinity,
      margin: EdgeInsets.only(right: Sizes.width10),
      child: Stack(children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Sizes.width10),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(storyData.stories),
            ),
          ),
        ),
        Positioned(
          top: Sizes.width05,
          left: Sizes.width15,
          child: CircleAvatar(
            radius: Sizes.width25,
            backgroundColor: colorWhite,
            child: CircleAvatar(
              radius: Sizes.width20,
              backgroundImage: AssetImage(storyData.profile),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(Sizes.width10),
              child: Text(
                storyData.uname,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: colorWhite,
                      fontSize: Sizes.width20,
                    ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
