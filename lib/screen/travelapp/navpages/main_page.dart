import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui/screen/travelapp/navpages/bar_item_page.dart';
import 'package:flutter_ui/screen/travelapp/navpages/home_page.dart';
import 'package:flutter_ui/screen/travelapp/navpages/my_page.dart';
import 'package:flutter_ui/screen/travelapp/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  State createState() => __MainPageState();
}

class __MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];
  @override
  int current_Index = 0;
  void onTap(int index) {
    setState(() {
      current_Index = index;
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: pages[current_Index],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        backgroundColor: Colors.red.withOpacity(0.1),
        currentIndex: current_Index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "My", icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
