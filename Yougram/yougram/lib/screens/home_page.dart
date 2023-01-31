// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:yougram/pages/Feeds.dart';
import 'package:yougram/pages/pages.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _pageindex = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    var scaffold = SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (newindex) {
            setState(() {
              _pageindex = newindex;
            });
          },
          children: const [
            MessagesPage(),
            Feed(),
            Post(),
            NotificationsPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: Bottom_Nav_Bar(
            pageindex: _pageindex, pageController: _pageController),
      ),
    );
    return scaffold;
  }
}

class Bottom_Nav_Bar extends StatelessWidget {
  const Bottom_Nav_Bar({
    Key? key,
    required int pageindex,
    required PageController pageController,
  })  : _pageindex = pageindex,
        _pageController = pageController,
        super(key: key);

  final int _pageindex;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        // borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
        child: GNav(
          // tabBorderRadius: 15,
          rippleColor: Colors.grey[300]!,
          hoverColor: Colors.grey[100]!,
          gap: 6,
          activeColor: Colors.black,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 11),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: const Color.fromARGB(255, 225, 225, 225),
          color: Colors.black,
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            const GButton(
              icon: LineIcons.facebookMessenger,
              text: 'Chats',
            ),
            const GButton(
              icon: LineIcons.home,
              text: 'Feed',
            ),
            const GButton(
              icon: LineIcons.search,
              text: 'Search',
            ),
            const GButton(
              icon: LineIcons.heart,
              text: 'Likes',
            ),
            const GButton(
              icon: LineIcons.user,
              text: 'Now!',
            ),
          ],
          selectedIndex: _pageindex,
          onTabChange: (index) {
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease);
          },
        ),
      ),
    );
  }
}
