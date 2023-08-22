import 'package:blogapp/components/likebutton.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String message;
  final String userEmail;
  final String postID;
  final List<String> likes;
  const Post(
      {super.key,
      required this.message,
      required this.userEmail,
      required this.postID,
      required this.likes});
  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  bool isLiked = false;

  @override
  void initState() {
    isLiked = widget.likes.contains(currentUser.email!);
    super.initState();
  }

  void toggleLikes() {
    setState(() {
      isLiked = !isLiked;
    });
    DocumentReference postRef =
        FirebaseFirestore.instance.collection('User Posts').doc(widget.postID);
    if (isLiked) {
      postRef.update({
        'Likes': FieldValue.arrayUnion([currentUser.email])
      });
    } else {
      postRef.update({
        'Likes': FieldValue.arrayRemove([currentUser.email])
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          LikeButton(
            isliked: isLiked,
            onTap: toggleLikes,
            likes: widget.likes.length.toString(),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.userEmail,
                style: TextStyle(color: Colors.grey[500]),
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(children: [
                Text(
                  widget.message,
                  overflow: TextOverflow.clip,
                  softWrap: true,
                ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
