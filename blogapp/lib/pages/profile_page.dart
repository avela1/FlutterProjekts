import 'package:blogapp/components/profile_detail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final currentUser = FirebaseAuth.instance.currentUser!;
  final usersCollection = FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    Future<void> editField(String desc, String detail) async {
      String newValue = '';

      await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.grey[900],
            title: Text(
              'Edit @$desc',
              style: const TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            content: TextField(
              style: const TextStyle(color: Colors.grey),
              controller: TextEditingController(
                text: (detail == "Empty $desc...") ? "" : detail,
              ),
              onChanged: (value) {
                newValue = value;
              },
            ),
            actions: [
              TextButton(
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop(newValue);
                },
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 10,
          );
        },
      );
      if (newValue.isEmpty) {
        newValue = "Empty $desc...";
      }
      if (newValue.trim().isNotEmpty) {
        await usersCollection.doc(currentUser.email).update({desc: newValue});
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Profile Page',
          ),
        ),
      ),
      body: ListView(children: [
        const SizedBox(
          height: 50,
        ),
        const Icon(
          Icons.person,
          size: 100,
        ),
        Text(
          currentUser.email!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[500],
          ),
        ),
        StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("Users")
              .doc(currentUser.email)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final userData = snapshot.data!.data() as Map<String, dynamic>;
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('My Details'),
                    ProfileDetail(
                      detail: userData['username'],
                      description: '@username',
                      onTap: () => editField('username', userData['username']),
                    ),
                    ProfileDetail(
                      detail: userData['bio'],
                      description: '@bio',
                      onTap: () => editField('bio', userData['bio']),
                    ),
                    ProfileDetail(
                      detail: userData['about'],
                      description: '@Intro',
                      onTap: () => editField('about', userData['about']),
                    ),
                    ProfileDetail(
                      detail: userData['hobbies'],
                      description: '@hobbies',
                      onTap: () => editField('hobbies', userData['hobbies']),
                    ),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error ${snapshot.error}'),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        )
      ]),
    );
  }
}
