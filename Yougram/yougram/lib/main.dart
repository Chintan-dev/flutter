// ignore_for_file: unused_import

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:yougram/screens/all_import_screens.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return const MaterialApp(
      title: 'YOUGRAM',
      home: Scaffold(
        body: SafeArea(
          child: Homepage(
            title: 'YOUGRAM',
          ),
        ),
      ),
    );
  }
}
