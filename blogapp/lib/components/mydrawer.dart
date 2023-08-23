import 'package:blogapp/components/mylist_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? profileTap;
  final void Function()? signOut;
  const MyDrawer({super.key, this.profileTap, this.signOut});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(children: [
        const DrawerHeader(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 150,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        MyListTile(
          text: 'H O M E',
          icon: Icons.home,
          onTap: () => Navigator.pop(context),
        ),
        MyListTile(
          text: 'P R O F I L E',
          icon: Icons.person,
          onTap: profileTap,
        ),
        MyListTile(
          text: 'L O G O U T',
          icon: Icons.logout,
          onTap: signOut,
        ),
      ]),
    );
  }
}
