import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.amber,
          child: const Center(
            child: Text("Swipe up"),
          ),
        ),
        Container(
          color: const Color.fromARGB(205, 255, 52, 7),
          child: const Center(
            child: Text("Swipe up"),
          ),
        ),
        Container(
          color: const Color.fromARGB(110, 32, 255, 7),
          child: const Center(
            child: Text("Swipe down"),
          ),
        ),
        Container(
          color: const Color.fromARGB(142, 255, 7, 210),
          child: const Center(
            child: Text("Swipe up"),
          ),
        ),
      ],
    );
  }
}
