import 'package:flutter/material.dart';
import 'package:wahid_project/Sarach%20Screen.dart';
import 'package:wahid_project/Trending.dart';
import 'package:wahid_project/Vidoesscreen.dart';
import 'package:wahid_project/accountsreen.dart';
import 'package:wahid_project/homescreen.dart';

class BottomnbarDome extends StatefulWidget {
   BottomnbarDome({super.key});

  @override
  State<BottomnbarDome> createState() => _BottomnbarDomeState();
}

class _BottomnbarDomeState extends State<BottomnbarDome> {
  int selectionIndex = 0;

  List<Widget> screenList = [
    HomescreenDome(),
    TrendingDome(),
    VideoScreen(),
    sarechscreenDome(),
    AccountPage1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectionIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapIndex) {
            selectionIndex = tapIndex;
            setState(() {});
          },
          currentIndex: selectionIndex,
          backgroundColor: Colors.grey, // 👈 Add this line
          selectedItemColor: Colors.black, // optional
          unselectedItemColor: Colors.black, // optional
          items:[
            BottomNavigationBarItem(  icon:Icon (Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.trending_up,), label: 'Trending',),
            BottomNavigationBarItem(  icon:Icon (Icons.videocam),label: 'video'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'More'),
          ]
      ),
    );

  }
}
