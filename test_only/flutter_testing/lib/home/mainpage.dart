// ignore_for_file: must_be_immutable, non_constant_identifier_names, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testing/home/hero.dart';
import 'package:flutter_testing/main.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_testing/login/login.dart';
import 'package:google_sign_in/google_sign_in.dart';

// final GoogleSignIn _googleSignIn = GoogleSignIn();

class Mainpage extends StatelessWidget {
  late String url;
  late String name;
  late String email;
  Mainpage({
    super.key,
    // required this.url,
    // required this.name,
    // required this.email,
  });

  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double phoneSize = 425;
    double tabletSize = 768;
    double LaptopSize = 1440;
    double padding = 500;
    if (screenSize.width <= phoneSize) {
      padding = 0;
    }
    if (screenSize.width < tabletSize && screenSize.width > phoneSize) {
      padding = 50;
    }
    if (screenSize.width > tabletSize && screenSize.width < LaptopSize) {
      padding = 200;
    }
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Headerbar(),
                  const SizedBox(height: 5),
                  const Text(
                    'Stories',
                    style: TextStyle(letterSpacing: 2.0),
                  ),
                  const SizedBox(height: 5),
                  const Storys(),
                  const SizedBox(height: 10),
                  const Chats(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Headerbar extends StatelessWidget {
  const Headerbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const LHero();
            }));
          }),
          icon: const Icon(Icons.search),
        ),
        const Center(
          child: Text(
            "Messages",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundImage: AssetImage("./img/1.jpg"),
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
          for (int i = 1; i <= 9; i++)
            Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('./img/pic/$i.jpg'),
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        for (int i = 1; i <= 8; i++)
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(168, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            height: 75,
            margin: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('./img/pic/$i.jpg'),
                    radius: 28,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("username"),
                        ),
                        Text("time"),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("last msg"),
                        ),
                        Text("1"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

        // ignore: avoid_unnecessary_containers
        Container(
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(40)),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  GoogleSignIn().signOut();
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (ctx) => Login()));
                },
                icon: const Icon(Icons.logout),
                label: const Text('Logout')))
      ],
    );
  }
}

// void signOutGoogle() async {
//   _googleSignIn.signOut().then((value) => Main());
//   //print("User Sign Out");
// }
