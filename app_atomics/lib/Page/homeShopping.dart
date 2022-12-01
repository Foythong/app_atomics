import 'package:flutter/material.dart';
import 'home.dart';
import 'feed.dart';
import 'notification.dart';
import 'profile.dart';

class homeShopping extends StatefulWidget {
  const homeShopping({super.key});

  @override
  State<homeShopping> createState() => _homeShoppingState();
}

class _homeShoppingState extends State<homeShopping> {
  int currentIndex = 0;
  static final screens = [
    home(),
    feed(),
    notification(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        backgroundColor: Colors.orange[500],
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 0, 0, 0),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            label: "หน้าแรก",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "ข่าวสาร",
            icon: Icon(Icons.feed),
          ),
          BottomNavigationBarItem(
            label: "แจ้งเตือน",
            icon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            label: "บัญชี",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
