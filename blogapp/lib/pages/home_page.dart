import 'package:blogapp/components/mydrawer.dart';
import 'package:blogapp/components/mytextfield.dart';
import 'package:blogapp/components/posts.dart';
import 'package:blogapp/pages/profile_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textController = TextEditingController();

  final currentUser = FirebaseAuth.instance.currentUser!;

  Future<void> postMessage() async {
    if (textController.text.isNotEmpty) {
      try {
        FirebaseFirestore.instance.collection('User Posts').add({
          'UserEmail': currentUser.email,
          'Message': textController.text,
          'Timestamp': Timestamp.now(),
          'Likes': [],
        });
        setState(() {
          textController.clear();
        });
      } on FirebaseException catch (e) {
        //somthing goes here...
        AlertDialog(
          title: Text(e.code),
        );
      }
    }
  }

  void signout() {
    FirebaseAuth.instance.signOut();
  }

  void goToProfilePage() {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ProfilePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        drawer: MyDrawer(profileTap: goToProfilePage, signOut: signout),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Center(
            child: Text(
              'The WALL',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.grey[900],
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('User Posts')
                    .orderBy("Timestamp", descending: false)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final posts = snapshot.data!.docs[index];
                          return Post(
                              message: posts['Message'],
                              userEmail: posts['UserEmail'],
                              postID: posts.id,
                              likes: List<String>.from(posts['Likes'] ?? []));
                        });
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error${snapshot.error}'),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Expanded(
                      child: MyTextField(
                        controller: textController,
                        hintText: 'Text Here',
                        obscureText: false,
                        
                      ),
                    ),
                    IconButton(
                      onPressed: postMessage,
                      icon: const Icon(
                        Icons.arrow_circle_up,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Logged in as => ${currentUser.email!}',
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
