// ignore_for_file: prefer_const_constructors, duplicate_ignore, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';

class Mainpage11 extends StatelessWidget {
  const Mainpage11({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // appBar: AppBar(
      //   title: Text("this is my app"),
      // ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        color: Colors.amber,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
        child: Row(
          children: [
            Text('hoiii'),
            IconButton(
                onPressed: (() => print('cliked')),
                icon: Icon(Icons.call),
                color: Colors.red),
            Container(
              color: Color.fromARGB(255, 172, 172, 172),
              child: Text(
                'Container',
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print("you click me");
        },
        child: Icon(Icons.chat),
      ),
    ));
  }
}
