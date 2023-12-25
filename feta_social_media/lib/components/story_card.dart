import 'package:feta_social_media/constants/export_constants.dart';
import 'package:feta_social_media/data/user_data.dart';
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
    final List<User> filteredUsers = usersData
        .where(
          (element) => element.id == storyData.id,
        )
        .toList();
    final User? user = filteredUsers.isNotEmpty ? filteredUsers.first : null;

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
              image: AssetImage(storyData.imageUrl),
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
              backgroundImage: AssetImage(user!.profileImgUrl),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(Sizes.width10),
              child: Text(
                user.fullName,
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
