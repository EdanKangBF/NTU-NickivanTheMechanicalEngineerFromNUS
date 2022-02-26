import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/health_page.dart';
import 'package:flutter_application/homepage.dart';
import 'package:flutter_application/setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HealthPage(),
    SettingPage(),
  ];

  final List<Widget> widgets = [
    HomePage(),
    HealthPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.lightGreenAccent,
        title: const Text('UNIdhealth', style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: widgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreenAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: 'Health',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}