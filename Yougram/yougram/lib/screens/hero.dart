import 'package:flutter/material.dart';
import 'package:yougram/Data/data.dart';

class Profile extends StatelessWidget {
  final Item item;
  const Profile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(49, 0, 0, 0),
        elevation: 1,
        title: Text(item.displayName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: item,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                width: 300,
                height: 300,
                child: CircleAvatar(
                  backgroundImage: AssetImage(item.photoURL),
                  radius: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
