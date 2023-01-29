// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

class User_Chats extends StatelessWidget {
  final item;
  const User_Chats({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leadingWidth: 34,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(item.photoURL),
              radius: 20,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.displayName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  "Online!",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        //const _AppBarTitle(),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              onPressed: (() {}),
              icon: const Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(child: Chatsbody()),
            ActionBar(),
          ],
        ),
      ),
    );
  }
}

class Chatsbody extends StatelessWidget {
  const Chatsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DateLable(),
        MessageOwnTile(
          message: 'hi this chat testing line',
          dates: '10:11pm',
        ),
        MessageOwnTile(
          message: 'hi this user1',
          dates: '10:13pm',
        ),
        MessageTile(
          message: 'my name is user2',
          dates: '10:11pm',
        ),
        MessageOwnTile(
          message: '❤️',
          dates: '10:11pm',
        ),
        MessageOwnTile(
          message: 'your name is user1 or what?',
          dates: '10:11pm',
        ),
        MessageTile(
          message: 'hi this chat testing line',
          dates: '10:11pm',
        ),
        MessageTile(
          message: 'hi this chat testing line',
          dates: '10:11pm',
        ),
        MessageOwnTile(
          message: 'hi this chat testing line',
          dates: '10:11pm',
        ),
      ],
    );
  }
}

class DateLable extends StatelessWidget {
  const DateLable({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 12),
            child: Text(
              'today',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MessageOwnTile extends StatelessWidget {
  const MessageOwnTile({
    Key? key,
    required this.message,
    required this.dates,
  }) : super(key: key);

  final String message;
  final String dates;

  static const _borderRadius = 26.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 5),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_borderRadius),
                  bottomRight: Radius.circular(_borderRadius),
                  bottomLeft: Radius.circular(_borderRadius),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 17),
                child: Text(message,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                dates,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key? key,
    required this.message,
    required this.dates,
  }) : super(key: key);

  final String message;
  final String dates;
  static const _borderRadius = 26.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(206, 53, 55, 205),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_borderRadius),
                  topRight: Radius.circular(_borderRadius),
                  bottomRight: Radius.circular(_borderRadius),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14.0, vertical: 17),
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                dates,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ActionBar extends StatelessWidget {
  const ActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                Icons.camera_alt,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TextField(
                //controller: controller.textEditingController,
                onChanged: (val) {
                  //controller.text = val;
                },
                style: const TextStyle(fontSize: 14),
                decoration: const InputDecoration(
                  hintText: 'Type something...',
                  border: InputBorder.none,
                ),
                //onSubmitted: (_) => ,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 24.0,
            ),
            child: IconButton(
              color: Colors.amber,
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
