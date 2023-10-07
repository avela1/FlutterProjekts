import 'package:feta_social_media/constants/export_constants.dart';
import 'package:feta_social_media/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostCardListViewItem extends StatelessWidget {
  final Post post;
  const PostCardListViewItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Container(
      margin: EdgeInsets.only(top: Sizes.width10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(Sizes.width10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(Sizes.width10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(post.uprofile),
                    ),
                    SizedBox(
                      width: Sizes.width10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          post.uname,
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Text(
                          post.postDate.toString(),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: post.message!.isNotEmpty,
            child: Padding(
              padding: EdgeInsets.all(Sizes.width10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.message!,
                    style: Theme.of(context).textTheme.headlineSmall,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  Visibility(
                    visible: post.message!.length > 200,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'See more',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: colorDanger),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image(
            image: AssetImage(post.postImg!),
          ),
          Padding(
            padding: EdgeInsets.all(Sizes.width10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: Theme.of(context).colorScheme.secondary,
                        size: Sizes.width30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.loupe_rounded,
                        color: Theme.of(context).colorScheme.secondary,
                        size: Sizes.width30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.telegram_outlined,
                        color: Theme.of(context).colorScheme.secondary,
                        size: Sizes.width30,
                      ),
                    ),
                  ],
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 4,
                  effect: ExpandingDotsEffect(
                      activeDotColor: colorDanger,
                      dotHeight: Sizes.width10,
                      dotWidth: Sizes.width10),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_add_outlined,
                    color: Theme.of(context).colorScheme.secondary,
                    size: Sizes.width30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Sizes.width10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'liked by ${post.uname} and ${post.likes} others',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  post.message!,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all ${post.comments} comments',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
