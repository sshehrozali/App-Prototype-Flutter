// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:awesome_app/Home/app.dart';
import 'package:awesome_app/Login/input.dart';
import 'package:awesome_app/Login/title.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  double paddingVal = 16.0;

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
                Padding(
                  padding: EdgeInsets.all(paddingVal),
                  child: InputFieldWidget(
                      placeholder: "Enter your Email", label: "Email"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.all(paddingVal),
                  child: InputFieldWidget(
                      placeholder: "Enter your Password", label: "Password"),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.all(paddingVal),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => App()));
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.blue, fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        padding: EdgeInsets.symmetric(vertical: 15.0)),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
