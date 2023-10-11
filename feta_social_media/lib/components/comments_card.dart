import 'package:feta_social_media/components/my_textfield.dart';
import 'package:feta_social_media/constants/export_constants.dart';
import 'package:flutter/material.dart';

class CommentsCard {
  static Future<dynamic> commentsCard(BuildContext context) {
    final textController = TextEditingController();
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Sizes.width20),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.4,
        maxChildSize: 0.85,
        expand: false,
        builder: (context, controller) => Padding(
          padding: EdgeInsets.all(Sizes.width10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ListView.builder(
                  controller: controller,
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(top: 10),
                    color: Colors.amber,
                    height: 50,
                  ),
                ),
              ),
              MyTextfield(
                controller: textController,
                hintText: 'hintText',
                obscureText: false,
                icon: Icons.telegram,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
