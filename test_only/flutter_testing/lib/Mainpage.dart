// ignore_for_file: prefer_const_constructors, duplicate_ignore, sort_child_properties_last, avoid_print, avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/gestures.dart';
// ignore: unused_import
import 'package:floating_frosted_bottom_bar/floating_frosted_bottom_bar.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Storys',
                  style: TextStyle(letterSpacing: 2.0),
                ),
              ),
              SizedBox(height: 5),
              Storys(),
              SizedBox(height: 10),
              Chats(),
            ],
          ),
        ),
      ),
    ));
  }
}

class Storys extends StatelessWidget {
  const Storys({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // color: Color.fromARGB(255, 222, 45, 45),
        children: [
          // all storys containers
          for (int i = 1; i <= 9; i++)
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('./img/pic/$i.jpg'),
                      radius: 35,
                    ),
                  ),
                  Container(
                    child: Text('$i'),
                  )
                ],
              ),
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          for (int i = 1; i <= 4; i++)
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(116, 206, 206, 206),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              height: 75,
              margin: EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('./img/pic/$i.jpg'),
                      radius: 28,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('Username $i', style: TextStyle(fontSize: 20)),
                  )
                ],
              ),
            ),
          Container(
              child: ElevatedButton.icon(
                  style:
                      ElevatedButton.styleFrom(fixedSize: Size.fromHeight(40)),
                  onPressed: (() => {}),
                  icon: Icon(Icons.logout),
                  label: Text('Logout')))
        ],
      ),
    );
  }
}
