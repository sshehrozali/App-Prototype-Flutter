// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "Signup",
        style: TextStyle(
            fontSize: 68.0, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}
