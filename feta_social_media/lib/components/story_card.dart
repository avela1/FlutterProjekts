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
      width: 80,
      height: double.infinity,
      margin: const EdgeInsets.only(right: 10),
      child: Stack(children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(storyData.stories),
            ),
          ),
        ),
        Positioned(
          top: 5,
          left: 15,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: colorWhite,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(storyData.profile),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                storyData.uname,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: colorWhite,
                      fontSize: 20,
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
