// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_testing/login/login.dart';
import 'package:flutter_testing/home/mainpage.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //return Mainpage(url);
            return Login();
          } else {
            return Login();
          }
        },
      ),
    );
  }
}
