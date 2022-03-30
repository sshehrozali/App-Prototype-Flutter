// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.all(0), children: [
        UserAccountsDrawerHeader(
          accountName: Text("Shehroz Ali"),
          accountEmail: Text("sshehrozali13@gmail.com"),
          currentAccountPicture: CircleAvatar(backgroundColor: Colors.white),
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text("Email"),
          subtitle: Text("sshehroza13@gmail.com"),
          trailing: Icon(Icons.edit),
          onTap: () {},
        ),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone Number"),
            subtitle: Text("sshehroza13@gmail.com"),
            trailing: Icon(Icons.edit),
            onTap: () {}),
        ListTile(
            leading: Icon(Icons.web),
            title: Text("Website"),
            subtitle: Text("github.com/sshehrozali"),
            trailing: Icon(Icons.edit),
            onTap: () {})
      ]),
    );
  }
}
