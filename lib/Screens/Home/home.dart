import 'package:flutter/material.dart';
import 'package:gmanager/Screens/All/allscreen.dart';
import 'package:gmanager/Screens/Dashboard/new_dashboard_screen.dart';
import 'package:gmanager/Screens/Day_Book/day_book.dart';
import 'package:gmanager/Screens/Payment/payment_screen.dart';
import 'package:gmanager/Screens/Tools/tools_screen.dart';

import '../../../constant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    NewDashboardScreen(),
    ToolsScreen(),
    DayBookScreen(),
    PaymentScreen(),
    AllScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 6.0,
        selectedItemColor: kMainColor,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.flare_sharp),
            label: 'Tools',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.backpack),
            label: 'Sales',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Payment'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.network_check_outlined), label: 'All'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
