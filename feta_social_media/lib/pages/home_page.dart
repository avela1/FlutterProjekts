import 'package:feta_social_media/components/custom_appbar.dart';
import 'package:feta_social_media/components/export_components.dart';
import 'package:feta_social_media/constants/export_constants.dart';
import 'package:feta_social_media/data/export_data.dart';
import 'package:feta_social_media/data/post_data.dart';
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(right: defaultPadding),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           CircleAvatar(
            //             backgroundColor:
            //                 Theme.of(context).colorScheme.secondary,
            //             child: const Image(
            //               color: colorDanger,
            //               image: AssetImage(
            //                 logo,
            //               ),
            //             ),
            //           ),
            //           const SizedBox(
            //             width: 10,
            //           ),
            //           Text(
            //             'Feta',
            //             style: Theme.of(context).textTheme.displayMedium,
            //           ),
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           IconButton(
            //             onPressed: () {},
            //             icon: Icon(
            //               Icons.arrow_circle_up_outlined,
            //               size: 40,
            //               color: Theme.of(context).colorScheme.secondary,
            //             ),
            //           ),
            //           IconButton(
            //             onPressed: () {},
            //             icon: Icon(
            //               Icons.circle_notifications_outlined,
            //               size: 40,
            //               color: Theme.of(context).colorScheme.secondary,
            //             ),
            //           ),
            //           const SizedBox(
            //             width: 10,
            //           ),
            //           const CircleAvatar(
            //             radius: 23,
            //             backgroundColor: colorDanger,
            //             child: CircleAvatar(
            //               radius: 20,
            //               backgroundImage: AssetImage(profile1),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            const CustomeAppbar(),
            Container(
              margin: EdgeInsets.only(left: Sizes.width10, top: Sizes.width10),
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Sizes.width10),
                child: ListView.builder(
                  itemCount: postData.length,
                  itemBuilder: (context, index) {
                    return PostCardListViewItem(post: postData[index]);
                  },
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () =>
            //       Navigator.of(context).pushReplacementNamed('/login_page'),
            //   child: const Text('Login'),
            // )
          ],
        ),
      ),
    );
  }
}
