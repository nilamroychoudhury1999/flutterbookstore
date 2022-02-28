import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'Profile.dart';

var _pageData = [
  DashboardScreen(),
  info(),
];
int _selectedItem = 0;

class nav extends StatefulWidget {
  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageData[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'INFO')
        ],
        currentIndex: _selectedItem,
        onTap: (setValue) {
          setState(() {
            _selectedItem = setValue;
          });
        },
      ),
    );
  }
}
