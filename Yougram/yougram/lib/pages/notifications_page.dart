// ignore_for_file: camel_case_types, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                //Notificationsbody(),
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

// ignore: must_be_immutable
class NotificationsBar extends StatefulWidget {
  const NotificationsBar({super.key});

  @override
  State<NotificationsBar> createState() => _NotificationsBarState();
}

class _NotificationsBarState extends State<NotificationsBar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          // Rowboxs
          Items_Box(index: '1', itemname: 'All activity'),
          Items_Box(index: '2', itemname: 'Likes'),
          Items_Box(index: '3', itemname: 'Comments'),
          Items_Box(index: '5', itemname: 'Mentions'),
          Items_Box(index: '6', itemname: 'Others'),
          Items_Box(index: '7', itemname: 'Others'),
        ],
      ),
    );
  }
}

class Items_Box extends StatelessWidget {
  const Items_Box({
    Key? key,
    required this.itemname,
    required this.index,
  }) : super(key: key);

  final String? itemname;
  final index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      child: GestureDetector(
        onTap: () {
          Fluttertoast.showToast(
            msg: itemname!,
            // msg: index!,
          );
        },
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
      ),
    );
  }
}
