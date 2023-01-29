import 'package:flutter/material.dart';
import 'package:yougram/screens/story_page_view.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(8.0),
      color: Colors.black,
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            ),
            title: const Text(
              "Logan Veawer",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            subtitle: Text(
              "Today, 20:16 PM",
              style: TextStyle(color: Colors.white.withOpacity(0.5)),
            ),
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => StoryPageView(),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
