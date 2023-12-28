import 'package:feta_social_media/constants/export_constants.dart';
import 'package:feta_social_media/controllers/export_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeAppbar extends StatelessWidget {
  const CustomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.put(AuthController());

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(Sizes.height20),
          bottomRight: Radius.circular(Sizes.height20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(Sizes.height10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  child: const Image(
                    color: colorDanger,
                    image: AssetImage(
                      logo,
                    ),
                  ),
                ),
                SizedBox(
                  width: Sizes.height10,
                ),
                Text(
                  'Feta',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    authController.signOut(context);
                  },
                  icon: Icon(
                    Icons.arrow_circle_up_outlined,
                    size: Sizes.height40,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.circle_notifications_outlined,
                    size: Sizes.height40,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                SizedBox(
                  width: Sizes.height10,
                ),
                CircleAvatar(
                  radius: Sizes.height20,
                  backgroundColor: colorDanger,
                  child: CircleAvatar(
                    radius: Sizes.height15,
                    backgroundImage: const AssetImage(profile1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
