// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yougram/login/login_page.dart';
import 'package:yougram/top_snackbar_all_import_file.dart';

import 'package:yougram/pages/messages_page.dart';
import 'package:yougram/screens/all_import_screens.dart';
//for Story
import 'package:story_view/story_view.dart';

import 'package:fluttertoast/fluttertoast.dart';
// some toast codes
// Fluttertoast.showToast(
//         msg: "This is Center Short Toast",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0
//     );

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YOUGRAM',
      theme: ThemeData.light().copyWith(
        backgroundColor: Colors.white,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: SafeArea(
          child: Login(),
        ),
      ),
    );
  }
}


// child: CircularProgressIndicator()