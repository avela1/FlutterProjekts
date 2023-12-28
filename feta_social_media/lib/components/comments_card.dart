import 'package:feta_social_media/components/export_components.dart';
import 'package:feta_social_media/constants/export_constants.dart';
import 'package:feta_social_media/models/export_model.dart';
import 'package:flutter/material.dart';

class CommentsCard {
  static Future<dynamic> commentsCard(
      BuildContext context, List<Comment> comment) {
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
                child: SingleChildScrollView(
                  child: Column(
                      children:
                          comment.map((e) => CommentItem(comment: e)).toList()),
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
