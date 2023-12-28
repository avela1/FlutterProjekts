import 'package:feta_social_media/constants/sizes.dart';
import 'package:feta_social_media/data/user_data.dart';
import 'package:feta_social_media/models/export_model.dart';
import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget {
  final Comment comment;
  const CommentItem({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    final User user = usersData
        .where((element) => element.id == comment.userId)
        .toList()
        .first;

    return Container(
      margin: EdgeInsets.all(Sizes.height15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: Sizes.height20,
            backgroundImage: AssetImage(user.profileImgUrl),
          ),
          SizedBox(
            width: Sizes.width10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.fullName,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  comment.content,
                  style: Theme.of(context).textTheme.headlineSmall,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                SizedBox(
                  height: Sizes.height05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${comment.timestamp.hour.toString()} hrs',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(
                          width: Sizes.height10,
                        ),
                        Text(
                          'Reply',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            size: Sizes.width20,
                          ),
                        ),
                        Text(
                          comment.likes.toString(),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(
                          width: Sizes.height03,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.thumb_down_outlined,
                            size: Sizes.width20,
                          ),
                        ),
                        Text(
                          comment.dislikes.toString(),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "See ${comment.reply} replies",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
