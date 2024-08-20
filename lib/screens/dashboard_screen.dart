// ignore_for_file: unused_import

import 'package:Agrodemy/const/color.dart';
import 'package:Agrodemy/screens/lesson1Screen.dart';
import 'package:Agrodemy/screens/lesson2Screen.dart';
import 'package:Agrodemy/screens/lesson3Screen.dart';
import 'package:Agrodemy/screens/lesson4Screen.dart';
import 'package:Agrodemy/screens/lesson5Screen.dart';
import 'package:Agrodemy/screens/lesson6Screen.dart';
import 'package:Agrodemy/utils/DashboardScreenUtils/community.dart';
import 'package:Agrodemy/utils/DashboardScreenUtils/home.dart';
import 'package:Agrodemy/utils/DashboardScreenUtils/leaderboard.dart';
import 'package:Agrodemy/utils/DashboardScreenUtils/lesson_details.dart';
import 'package:Agrodemy/utils/DashboardScreenUtils/notification.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const LeaderboardScreen(),
    const CommunityScreen(),
    const NotificationsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blacknav,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/carrot.png'),
            ),
              Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.flash_on, color: Colors.yellow),
                Text('12', style: TextStyle(color: white)),
              ],
            ),
            Row(
               mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.favorite, color:    Colors.red),
                Text('10', style: TextStyle(color: white)),
              ],
            ),
            Row(
               mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/troph.png'),
                Text('20', style: TextStyle(color: white)),
              ],
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: black,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard),
                label: 'Leaderboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: 'Community',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
