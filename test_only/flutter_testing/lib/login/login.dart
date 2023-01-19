// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names, unused_field, avoid_print

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_testing/buttom_bar.dart';
// import 'package:flutter_testing/auth/auth_page.dart';
// import 'package:flutter_testing/auth/user_authentication.dart';
import 'package:flutter_testing/home/mainpage.dart';
import 'package:flutter_testing/login/FrogotPassword.dart';
import 'package:flutter_testing/login/signup.dart';
import 'package:flutter_testing/main.dart';
import 'package:flutter_testing/maint_em.dart';
import 'package:flutter_testing/widgets/flash_message.dart';
import 'package:flutter_testing/widgets/heading_text.dart';
import 'package:flutter_testing/widgets/backgroundscreen.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

// final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();

//SignInScreen

// ignore: must_be_immutable
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  GoogleSignInAccount? _userObj;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  String url = "";
  String name = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // ignore: prefer_const_literals_to_create_immutables
      child: Stack(children: [
        const BackgroundScreen(),
        Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 10),
          child: Column(
              // mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: MainHeading(
                    title: "Hi!",
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 16,
                          sigmaY: 16,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          // height: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(197, 255, 255, 255)
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                              vertical: 20,
                            ),
                            child: Form(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Email
                                    TextFormField(
                                      controller: _emailController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 13,
                                        ),
                                        hintText: "Email",
                                        filled: true,
                                        enabledBorder: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: BorderSide.none,
                                        ),
                                        fillColor:
                                            Color.fromARGB(121, 255, 255, 255),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  121, 255, 255, 255),
                                              width: 3),
                                        ),
                                      ),
                                      // me commte
                                      // validator: (email) => email != null &&
                                      //         !EmailValidator.validate(email)
                                      //     ? "Enter a valid email"
                                      //     : null,
                                      // me commte
                                      textInputAction: TextInputAction.next,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    // password
                                    TextFormField(
                                      controller: _passwordController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 13,
                                        ),
                                        hintText: "password",
                                        filled: true,
                                        enabledBorder: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: BorderSide.none,
                                        ),
                                        fillColor:
                                            Color.fromARGB(121, 255, 255, 255),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  121, 255, 255, 255),
                                              width: 3),
                                        ),
                                      ),
                                      // me commte
                                      // validator: (email) => email != null &&
                                      //         !EmailValidator.validate(email)
                                      //     ? "Enter a valid email"
                                      //     : null,
                                      // me commte
                                      textInputAction: TextInputAction.next,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    // login button
                                    ElevatedButton(
                                      onPressed: (() {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return MyAppbar();
                                        }));

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                "This login function not working try google or FB"),
                                          ),
                                        );
                                        // final email = _emailController.text;
                                        //   final isValidFrom =
                                        //       fromKey.currentState!.validate();
                                        //   if (isValidFrom) {
                                        //     Navigator.push(
                                        //       context,
                                        //       MaterialPageRoute(
                                        //         builder: (ctx) => LoginScreen(
                                        //           email: _emailController.text,
                                        //         ),
                                        //       ),
                                        //     );
                                        //   }
                                      }),
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 15.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        backgroundColor:
                                            Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          // color: Color.fromARGB(235, 8, 8, 7),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    // Frogetpassword
                                    GestureDetector(
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (ctx) => FrogotPassword(),
                                        ),
                                      ),
                                      child: const Text(
                                        "Frogot your password?",
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              235, 255, 255, 255),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.4,
                                        ),
                                      ),
                                    ),
                                    // OR
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: Center(
                                        child: Text(
                                          "or",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    // Don't have an account?
                                    Row(
                                      children: [
                                        Text(
                                          "Don't have an account? ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18,
                                            letterSpacing: 0.4,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (ctx) => SignUp(),
                                            ),
                                          ),
                                          child: const Text(
                                            "Sign up",
                                            style: TextStyle(
                                              color:
                                                  Color.fromARGB(235, 0, 0, 0),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    // GoogleSignIn
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 15.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        backgroundColor:
                                            Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      onPressed: () {
                                        _googleSignIn.signIn().then((userData) {
                                          setState(() {
                                            _userObj = userData;
                                            url = _userObj!.photoUrl.toString();
                                            name = _userObj!.displayName
                                                .toString();
                                            email = _userObj!.email;
                                          });
                                          if (userData != null) {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => (Mainpage(
                                                    // url: url,
                                                    // name: name,
                                                    // email: email,
                                                    )),
                                              ),
                                            );
                                          }
                                        }).catchError((e) {
                                          print(e);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text("erorr"),
                                            ),
                                          );
                                        });
                                      },

                                      // onPressed: (() {
                                      //   _googleSignIn.signIn().then((value) => {
                                      //         Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //             builder:
                                      //                 (BuildContext context) {
                                      //               return Main();
                                      //             },
                                      //           ),
                                      //         ),
                                      //       });
                                      // }),

                                      // UserAuthentication()
                                      //     .signInWithGoogle(context);

                                      //   signInWithGoogle(model)
                                      //       .then((FirebaseUser user) {
                                      //     model.clearAllModels();
                                      //     Navigator.of(context)
                                      //         .pushNamedAndRemoveUntil(
                                      //             RouteName.Home,
                                      //             (Route<dynamic> route) =>
                                      //                 false);
                                      //   }).catchError((e) => print(e));

                                      child: Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          CircleAvatar(
                                            radius: 10,
                                            backgroundColor: Colors.white,
                                            backgroundImage:
                                                AssetImage('./img/Google.png'),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Continue With Google",
                                            style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    // Fb sign
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 40.0, vertical: 15.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        backgroundColor:
                                            Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      onPressed: (() {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text("test"),
                                          ),
                                        );
                                        Navigator.push(context,
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return Mainpage();
                                        }));
                                      }),
                                      child: Row(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          CircleAvatar(
                                            radius: 10,
                                            backgroundImage:
                                                AssetImage('./img/fb.png'),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Continue With facebook",
                                            style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ]),
    );
  }
}

Future SignIn() async {}

class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
