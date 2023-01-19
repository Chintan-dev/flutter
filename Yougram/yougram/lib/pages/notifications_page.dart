// ignore_for_file: camel_case_types, avoid_print

import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(actions: const [
      //   Text('NotificationsPage', style: TextStyle(letterSpacing: 2.0)),
      //   SizedBox(height: 7),
      //   NotificationsBar(),
      // ]),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('NotificationsPage', style: TextStyle(letterSpacing: 2.0)),
                SizedBox(height: 7),
                NotificationsBar(),
                SizedBox(height: 7),
                Notificationsbody(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Notificationsbody extends StatelessWidget {
  const Notificationsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
      // color: Colors.lightGreenAccent,
      child: Column(
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
                      backgroundImage: AssetImage('./img/6.jpg'),
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
      ),
    );
  }
}

class NotificationsBar extends StatelessWidget {
  const NotificationsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          // Rowboxs
          Items_Box(itemname: 'All activity'),
          Items_Box(itemname: 'Likes'),
          Items_Box(itemname: 'Comments'),
          Items_Box(itemname: 'Mentions'),
          Items_Box(itemname: 'Others'),
          Items_Box(itemname: 'Others'),
        ],
      ),
    );
  }
}

class Items_Box extends StatelessWidget {
  const Items_Box({
    Key? key,
    required this.itemname,
  }) : super(key: key);

  final String? itemname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          child: Center(
              child: Text(
            itemname!,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              //fontSize: 16,
              // fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
