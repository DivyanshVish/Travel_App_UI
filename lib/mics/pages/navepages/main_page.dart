import 'package:flutter/material.dart';
import 'package:travel_app/mics/pages/navepages/bar_item_page.dart';
import 'package:travel_app/mics/pages/navepages/home_page.dart';
import 'package:travel_app/mics/pages/navepages/my_page.dart';
import 'package:travel_app/mics/pages/navepages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List page = [
    HomePage(),
    BarPage(),
    SearchPage(),
    MyPage(),

  ];
  int CurrentIndex = 0;
  void onTap(int index){
    setState(() {
      CurrentIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.shifting,
        currentIndex: CurrentIndex,
        onTap: onTap,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.apps_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Bar',
            icon: Icon(Icons.bar_chart_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search_rounded),
          ),
          BottomNavigationBarItem(
            label: 'My',
            icon: Icon(Icons.person_rounded),
          ),
        ],
      ),
    );
  }
}
