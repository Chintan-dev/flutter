// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_testing/main.dart';
import 'package:flutter_testing/widgets/flash_message.dart';
import 'package:flutter_testing/widgets/heading_text.dart';
import 'package:flutter_testing/widgets/backgroundscreen.dart';

class FrogotPassword extends StatelessWidget {
  const FrogotPassword({super.key});
  get _emailController => null;

  @override
  Widget build(BuildContext context) {
    //   return Scaffold(
    //     body: Stack(
    //       children: [
    //         const BackgroundScreen(),
    //         Padding(
    //           padding: const EdgeInsets.only(top: 30, bottom: 10),
    //           child: IconButton(
    //             color: Colors.white,
    //             icon: const Icon(Icons.arrow_back),
    //             onPressed: () {
    //               // Pop the current page (i.e., go back one page)
    //               Navigator.pop(context);
    //             },
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(top: 100, bottom: 20),
    //           child: Column(
    //               // mainAxisSize: MainAxisSize.min,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 const Padding(
    //                   padding: EdgeInsets.symmetric(
    //                     vertical: 10,
    //                     horizontal: 20,
    //                   ),
    //                   child: MainHeading(
    //                     title: "Recover password",
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Padding(
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 10, vertical: 10),
    //                     child: ClipRRect(
    //                       child: BackdropFilter(
    //                         filter: ImageFilter.blur(
    //                           sigmaX: 16,
    //                           sigmaY: 16,
    //                         ),
    //                         child: Container(
    //                           width: double.infinity,
    //                           height: double.minPositive,
    //                           decoration: BoxDecoration(
    //                               color: const Color.fromARGB(197, 255, 255, 255)
    //                                   .withOpacity(0.2),
    //                               borderRadius: BorderRadius.circular(20)),
    //                           child: Padding(
    //                             padding: const EdgeInsets.symmetric(
    //                               horizontal: 25,
    //                               vertical: 20,
    //                             ),
    //                             child: Form(
    //                               autovalidateMode:
    //                                   AutovalidateMode.onUserInteraction,
    //                               child: SingleChildScrollView(
    //                                 child: Column(
    //                                   crossAxisAlignment:
    //                                       CrossAxisAlignment.start,
    //                                   children: [
    //                                     const Text(
    //                                       "Don't worry! it happens.Please enter the address and check your email.",
    //                                       style: TextStyle(
    //                                           color: Colors.white, fontSize: 18),
    //                                     ),
    //                                     const SizedBox(
    //                                       height: 20,
    //                                     ),
    //                                     // Email
    //                                     TextFormField(
    //                                       controller: _emailControllersignup,
    //                                       decoration: InputDecoration(
    //                                         contentPadding:
    //                                             const EdgeInsets.symmetric(
    //                                           horizontal: 8,
    //                                           vertical: 13,
    //                                         ),
    //                                         hintText: "Email",
    //                                         filled: true,
    //                                         enabledBorder: UnderlineInputBorder(
    //                                           borderRadius:
    //                                               BorderRadius.circular(12),
    //                                           borderSide: BorderSide.none,
    //                                         ),
    //                                         fillColor: const Color.fromARGB(
    //                                             121, 255, 255, 255),
    //                                         focusedBorder: OutlineInputBorder(
    //                                           borderRadius:
    //                                               BorderRadius.circular(12),
    //                                           borderSide: const BorderSide(
    //                                               color: Color.fromARGB(
    //                                                   121, 255, 255, 255),
    //                                               width: 3),
    //                                         ),
    //                                       ),
    //                                       textInputAction: TextInputAction.next,
    //                                     ),
    //                                     const SizedBox(
    //                                       height: 15,
    //                                     ),

    //                                     // login button
    //                                     ElevatedButton(
    //                                       onPressed: (() {
    //                                         ScaffoldMessenger.of(context)
    //                                             .showSnackBar(
    //                                           const SnackBar(
    //                                             content: Text(
    //                                                 "This function not working try google or FB"),
    //                                           ),
    //                                         );
    //                                       }),
    //                                       style: ElevatedButton.styleFrom(
    //                                         padding: const EdgeInsets.symmetric(
    //                                             horizontal: 40.0, vertical: 15.0),
    //                                         shape: RoundedRectangleBorder(
    //                                           borderRadius:
    //                                               BorderRadius.circular(10.0),
    //                                         ),
    //                                         backgroundColor: const Color.fromARGB(
    //                                             255, 0, 0, 0),
    //                                       ),
    //                                       child: Container(
    //                                         width: double.infinity,
    //                                         decoration: BoxDecoration(
    //                                           // color: Color.fromARGB(235, 8, 8, 7),
    //                                           borderRadius:
    //                                               BorderRadius.circular(20),
    //                                         ),
    //                                         child: const Center(
    //                                             child: Text(
    //                                           "Check email",
    //                                           style: TextStyle(
    //                                             color: Colors.white,
    //                                             fontSize: 16,
    //                                             fontWeight: FontWeight.bold,
    //                                           ),
    //                                         )),
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ]),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const BackgroundScreen(),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
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
              padding: const EdgeInsets.only(top: 180, bottom: 170),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 30,
                      ),
                      child: MainHeading(
                        title: "Frogot password?",
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
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                  vertical: 20,
                                ),
                                child: Form(
                                  // key: fromKey,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Don't worry! it happens.Please enter the address and check your email.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        TextFormField(
                                          controller: _emailController,
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
                                                    BorderRadius.circular(15),
                                                borderSide: BorderSide.none),
                                            fillColor: const Color.fromARGB(
                                                185, 241, 236, 236),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: const BorderSide(
                                                color: Color.fromARGB(
                                                    235, 255, 255, 255),
                                                width: 3,
                                              ),
                                            ),
                                          ),
                                          // me commte
                                          // validator: (email) => email != null &&
                                          //         !EmailValidator.validate(
                                          //             email)
                                          //     ? "Enter a valid email"
                                          //     : null,
                                          // me commte
                                          textInputAction: TextInputAction.next,
                                        ),
                                        const SizedBox(
                                          height: 20,
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
                                              "Check email",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
