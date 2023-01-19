// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //     backgroundColor: Color.fromARGB(255, 2, 171, 255),
    //     body: Center(
    //         child: Text(
    //       "hi,I'm Chintan",
    //       style: TextStyle(fontSize: 70),
    //     )),
    //   ),
    // );
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(170, 227, 227, 227),
          // appBar: AppBar(backgroundColor: Colors.red),
          body: Container(
            key: key,
            child: Column(
              children: [
                SizedBox(
                  key: key,
                  width: double.infinity,
                  height: 650,
                  //child: Image.asset("img/1.jpg"),
                  //color: Color.fromARGB(255, 0, 43, 172),
                ),
                Container(
                  key: key,
                  child: Row(children: [
                    Container(
                      key: key,
                      child: Column(
                        children: const [
                          // Text("story img1"),
                          // Text("user name"),
                        ],
                      ),
                    )
                  ]),
                ),
                Container(),
                Container(),
                Container()
              ],
            ),
          )),
    );
  }
}
