// ignore_for_file: unused_element, unused_import
import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:yougram/pages/pages.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Stories', style: TextStyle(letterSpacing: 2.0)),
              Storys(),
              SizedBox(height: 7),
              Chats(),
            ],
          ),
        ),
      ],
    );
  }
}

class Storys extends StatelessWidget {
  const Storys({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // all storys containers
          for (int i = 1; i <= 7; i++)
            Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('./img/$i.jpg'),
                    radius: 35,
                  ),
                ),
                Text('$i')
              ],
            ),
        ],
      ),
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i <= 9; i++)
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2),
            color: const Color.fromARGB(80, 206, 206, 206),
            height: 70,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('./img/1.jpg'),
                    radius: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      // username
                      Text('Username'),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
