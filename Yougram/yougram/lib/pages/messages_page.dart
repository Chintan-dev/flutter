// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Stories', style: TextStyle(letterSpacing: 2.0)),
                Storys(),
                SizedBox(height: 5),
                Chats(),
              ],
            ),
          ),
        ],
      ),
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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
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
