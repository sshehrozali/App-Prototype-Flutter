// ignore_for_file: prefer_const_constructors

import 'package:awesome_app/drawer.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gmail")),
      drawer: MyDrawer(),
    );
  }
}
