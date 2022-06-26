// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  final imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEjRGjze0AoC6eO6PN9VtpY1G7VtIddgUHKA&usqp=CAU";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Vaibhav Patil"), 
              accountEmail: Text("vaibhav@test.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ) 
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
                "Home",
                textScaleFactor: 1.2,
              ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
                "Profile",
                textScaleFactor: 1.2,
              ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
                "Enail Me",
                textScaleFactor: 1.2,
              ),
          )
        ],
      ),
    );
  }
}