import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:la_canasta/src/features/main_page/screens/chats/chats_screen.dart';
import 'package:la_canasta/src/features/main_page/screens/news/news_screen.dart';
import 'package:la_canasta/src/features/main_page/screens/profile/profile_screen.dart';

import '../screens/home/home_screen.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBar();
}

class _MainNavigationBar extends State<MainNavigationBar>{
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screens = [
    const CustomHomePage(),
    const NewsScreen(),
    const ChatsScreen(),
    const ChatsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context){
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.newspaper, size: 30),
      const Icon(Icons.add_box_rounded, size: 30),
      const Icon(Icons.chat, size: 30),
      const Icon(Icons.person_pin, size: 30),
    ];
    return SafeArea(
      top: false,
      child: Scaffold(
          body: screens[index],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                iconTheme: const IconThemeData(color: Colors.red)
            ),
            child: CurvedNavigationBar(
              key: navigationKey,
              height: 60,
              backgroundColor: Colors.transparent,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 300),
              index: index,
              items: items,
              onTap: (index) => setState(() => this.index = index),
            ),
          )
      )
    );

  }
}