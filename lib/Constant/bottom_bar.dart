import 'package:flutter/material.dart';
import 'package:nestsuche2/Constant/color_constant.dart';
import 'package:nestsuche2/pages/chat_page.dart';
import 'package:nestsuche2/pages/favourite.dart';
import 'package:nestsuche2/pages/profile_page.dart';
import 'package:nestsuche2/pages/search_page.dart';
import '../pages/home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  BottomBarState createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const SearchPage(),
    const FavouritePage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          pages[pageIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: buildMyNavBar(context),
          ),
        ],
      ),
    );
  }

  Widget buildMyNavBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22, left: 18, right: 18),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            buildNavItem(Icons.home_rounded, Icons.home_outlined, "Home", 0),
            buildNavItem(Icons.notifications, Icons.notifications_none, "Searches", 1),
            buildNavItem(Icons.favorite, Icons.favorite_border, "Favorites", 2),
            buildNavItem(Icons.chat, Icons.chat_outlined, "Chat", 3),
            buildNavItem(Icons.person, Icons.person_outline, "Profile", 4),
          ],
        ),
      ),
    );
  }

  Expanded buildNavItem(
      IconData activeIcon, IconData inactiveIcon, String label, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            pageIndex = index;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              pageIndex == index ? activeIcon : inactiveIcon,
              color: Colors.white,
              size: 24,
            ),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight:
                pageIndex == index ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}