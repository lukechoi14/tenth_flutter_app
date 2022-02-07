import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenth_flutter_app/pages/navpages/bar_item_page.dart';
import 'package:tenth_flutter_app/pages/home_page.dart';
import 'package:tenth_flutter_app/pages/navpages/my_page.dart';
import 'package:tenth_flutter_app/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        onTap: onTap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(title: Text("home"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              title: Text("bar"), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(
              title: Text("search"), icon: Icon(Icons.search)),
          BottomNavigationBarItem(title: Text("my"), icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
