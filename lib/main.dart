import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gmail")),
      drawer: Drawer(
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
      ),
    );
  }
}
