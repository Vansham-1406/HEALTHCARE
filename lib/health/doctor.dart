import 'package:healthcare/health/Schedule.dart';
import 'package:healthcare/health/home_screen.dart';
import 'package:healthcare/health/messages.dart';
import 'package:healthcare/health/settings.dart';
import 'package:flutter/material.dart';

class MyDoctor extends StatefulWidget {
  @override
  _MyDoctor createState() => _MyDoctor();
}



class _MyDoctor extends State<MyDoctor> {
  int _selectedIndex = 0;

  final _screens = [
    Home_Screen(),
    Message_Screen(),
    Schedule_Screen(),
    Settings_Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromRGBO(94, 88, 169, 1),
          unselectedItemColor: Color.fromRGBO(146, 145, 147, 1),
          iconSize: 25,
          onTap: _onItemTapped,
          selectedFontSize: 16,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          elevation: 5),
    );
  }
}
