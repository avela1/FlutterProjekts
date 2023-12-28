import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:feta_social_media/components/custom_appbar.dart';
import 'package:feta_social_media/components/export_components.dart';
import 'package:feta_social_media/constants/export_constants.dart';
import 'package:feta_social_media/data/export_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: colorDanger,
        height: Sizes.height50,
        color: Theme.of(context).colorScheme.background,
        index: 2,
        items: <Widget>[
          Icon(
            Icons.heart_broken,
            color: Theme.of(context).colorScheme.secondary,
            size: Sizes.height30,
          ),
          Icon(
            Icons.history,
            color: Theme.of(context).colorScheme.secondary,
            size: Sizes.height30,
          ),
          Icon(
            Icons.home,
            color: Theme.of(context).colorScheme.secondary,
            size: Sizes.height30,
          ),
          Icon(
            Icons.shopify_rounded,
            color: Theme.of(context).colorScheme.secondary,
            size: Sizes.height30,
          ),
          Icon(
            Icons.location_history,
            color: Theme.of(context).colorScheme.secondary,
            size: Sizes.height30,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomeAppbar(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: Sizes.width10, top: Sizes.width10),
                    height: Sizes.height150,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: storyData.length,
                      itemBuilder: (context, index) {
                        return StoryCard(
                          storyData: storyData[index],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.width10),
                    child: MyTextfield(
                      controller: controller,
                      hintText: '# Explore More',
                      obscureText: false,
                      icon: Icons.search_outlined,
                      hintStyle: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(
                    height: Sizes.width10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: postData
                        .map((e) => PostCardListViewItem(post: e))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
