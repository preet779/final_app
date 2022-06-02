import 'package:final_app/pages/navpages/baritem.dart';
import 'package:final_app/pages/navpages/homepage.dart';
import 'package:final_app/pages/navpages/mypage.dart';
import 'package:final_app/pages/navpages/searchpage.dart';
import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  List pages = [
    homepage(),
    baritem(),
    searchpage(),
    mypage(),
  ];
  int currentIndex = 0;
  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: ontap,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_sharp), label: "bar"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "my")
          ]),
    );
  }
}
