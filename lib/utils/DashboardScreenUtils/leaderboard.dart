
import 'package:Agrodemy/const/color.dart';
import 'package:Agrodemy/utils/LeaderboardUtils/all_time.dart';
import 'package:Agrodemy/utils/LeaderboardUtils/month.dart';
import 'package:Agrodemy/utils/LeaderboardUtils/today.dart';
import 'package:flutter/material.dart';

class LeaderboardScreen extends StatefulWidget {

  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        backgroundColor: blacknav,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // SizedBox(
            //   child: Divider(thickness: 1, indent: 0, endIndent: 0, color: black,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    _pageController.animateToPage(0, duration: const Duration(seconds: 1), curve: Curves.ease);
                  },
                  child: Text('Today',style: TextStyle(color: white)),
                ),
                 InkWell(
                  onTap: (){
                    _pageController.animateToPage(1, duration: const Duration(seconds: 1), curve: Curves.ease);
                  },
                  child: Text('Month', style: TextStyle(color: white)),
                ),
                 InkWell(
                  onTap: (){
                     _pageController.animateToPage(2, duration: const Duration(seconds: 1), curve: Curves.ease);
                  },
                  child: Text('All Time', style: TextStyle(color: white)),
                ),
              ],
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          Today(),
          Month(),
          AllTime(),
        ],
      ),
    );
  }
}