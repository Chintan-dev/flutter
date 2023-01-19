// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_testing/main.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_testing/widgets/BackgroundScreen.dart';
import 'package:flutter_testing/widgets/flash_message.dart';
import 'package:flutter_testing/widgets/heading_text.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final _emailControllersignup = TextEditingController();
  final _passwordControllersignup = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   leading: IconButton(
        //     icon: const Icon(Icons.arrow_back),
        //     onPressed: () {
        //       // Pop the current page (i.e., go back one page)
        //       Navigator.pop(context, false);
        //     },
        //   ),
        // ),
        body: SafeArea(
          child: Stack(children: [
            const BackgroundScreen(),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  // Pop the current page (i.e., go back one page)
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 10),
              child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      child: MainHeading(
                        title: "Registration!",
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
                              height: 100,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(197, 255, 255, 255)
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Email
                                        TextFormField(
                                          controller: _emailControllersignup,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
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
                                            fillColor: const Color.fromARGB(
                                                121, 255, 255, 255),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              borderSide: const BorderSide(
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
                                          controller: _passwordControllersignup,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
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
                                            fillColor: const Color.fromARGB(
                                                121, 255, 255, 255),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              borderSide: const BorderSide(
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
                                        // same password
                                        TextFormField(
                                          controller: _passwordControllersignup,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 13,
                                            ),
                                            hintText: "confirm password",
                                            filled: true,
                                            enabledBorder: UnderlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              borderSide: BorderSide.none,
                                            ),
                                            fillColor: const Color.fromARGB(
                                                121, 255, 255, 255),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              borderSide: const BorderSide(
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
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                    "This function not working try google or FB"),
                                              ),
                                            );
                                          }),
                                          style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 40.0,
                                                vertical: 15.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 0, 0, 0),
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
                                              "Registration",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )),
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
        ),
      ),
    );
  }
}
