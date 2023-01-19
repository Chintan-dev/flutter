// ignore_for_file: unused_import, depend_on_referenced_packages, prefer_const_constructors, unused_field
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_testing/Mainpage.dart';
import 'package:flutter_testing/auth/auth_page.dart';
import 'package:flutter_testing/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_testing/widgets/flash_message.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Main());
}

// ignore: must_be_immutable
class Main extends StatelessWidget {
  Main({super.key});
  final bool _isLoggedIn = false;
  GoogleSignInAccount? _userObj;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     content: Flashmessage(
              //       errormsg: "connectionState waiting",
              //     ),
              //   ),
              // );
            } else if (snapshot.hasError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Flashmessage(
                    errormsg: "snapshot.hasError",
                  ),
                ),
              );
            }

            if (snapshot.hasData) {
              return Mainpage();
            } else {
              return Login();
            }
          },
        ),
      ),
    );
  }
}
