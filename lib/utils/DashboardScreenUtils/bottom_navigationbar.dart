
// import 'package:Agrodemy/const/color.dart';
// import 'package:Agrodemy/screens/dashboard_screen.dart';
// import 'package:flutter/material.dart';

// import 'community.dart';
// import 'leaderboard.dart';
// import 'notification.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   int _selectedIndex = 0;
//   final PageController _pageController = PageController();

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//     _pageController.jumpToPage(index);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         onPageChanged: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         children: const [
//           HomeScreen(),
//           LeaderboardScreen(),
//           CommunityScreen(),
//           NotificationsScreen(),
//         ],
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(bottom: 20),
//         child: Container(
//           color: black,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: BottomNavigationBar(
//               backgroundColor: white,
//               items: const [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.leaderboard),
//                   label: 'Leaderboard',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.people),
//                   label: 'Community',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.notifications),
//                   label: 'Notifications',
//                 ),
//               ],
//               currentIndex: _selectedIndex,
//               selectedItemColor: Colors.green,
//               unselectedItemColor: Colors.grey,
//               onTap: _onItemTapped,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
