// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:awesome_app/Login/input.dart';
import 'package:awesome_app/Login/title.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  var placeholder = "Enter your Email";
  var label = "Email";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Card(
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SignUpText(),
                SizedBox(
                  height: 20,
                ),
                InputFieldWidget(
                    placeholder: "Enter your Email", label: "Email"),
                InputFieldWidget(
                    placeholder: "Enter your Password", label: "Password")
              ],
            ),
          )),
    );
  }
}
