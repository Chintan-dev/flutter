// ignore_for_file: unused_element, unused_import, prefer_typing_uninitialized_variables
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Data/data.dart';
import '../screens/User_chats.dart';
import '../screens/hero.dart';
import '../screens/story_page_view.dart';
// import 'package:yougram/pages/pages.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Stories', style: TextStyle(letterSpacing: 2.5)),
          Storys(),
          SizedBox(height: 10),
          Chats(),
        ],
      ),
    );
  }
}

class Storys extends StatelessWidget {
  const Storys({super.key});

  @override
  Widget build(BuildContext context) {
    // all storys containers
    return SizedBox(
      height: 100,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: ((context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => StoryPageView(item: item)),
              ),
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(item.photoURL),
                      radius: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Text(
                      item.displayName,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: ((context, index) {
          final item = items[index];
          var msgDate;
          msgDate = '1';
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                transitionOnUserGestures: true,
                tag: item,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => Profile(item: item)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(item.photoURL),
                      radius: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => User_Chats(item: item)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.displayName,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            overflow: TextOverflow.ellipsis,
                            'Hi this is ${item.displayName}',
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              '1/1/23',
                              style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(206, 53, 55, 205),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  msgDate.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
