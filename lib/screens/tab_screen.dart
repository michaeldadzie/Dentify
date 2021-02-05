import 'package:dentify/detection/realtime.dart';
import 'package:dentify/detection/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:dentify/main.dart';
import 'package:dentify/widgets/dot.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  @override
  void initState() {
    _pages = [
      {'page': StaticImage()},
      {'page': LiveFeed(cameras)},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Colors.grey[900],
          unselectedItemColor: Colors.amber[200],
          selectedItemColor: Colors.amber,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.grey[900],
              icon: Icon(FlutterIcons.box_fea),
              title: Dot(),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.grey[900],
              icon: Icon(FlutterIcons.image_filter_center_focus_mco),
              title: Dot(),
            ),
          ],
        ),
      ),
    );
  }
}
