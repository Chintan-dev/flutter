// ignore_for_file: depend_on_referenced_packages, duplicate_import

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_testing/auth/auth_page.dart';
import 'package:flutter_testing/auth/auth_page.dart';
import 'package:flutter_testing/view/home/home_screen.dart';
import 'package:flutter_testing/view/login/login_screen.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_testing/view/signUp/signUp_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //fontFamily: GoogleFonts.roboto().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: AuthPage(),
    );
  }
}
