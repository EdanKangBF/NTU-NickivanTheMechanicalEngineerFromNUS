import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screens/chat/chat_screen.dart';
import 'package:flutter_application/screens/health/health_page.dart';
import 'package:flutter_application/screens/home/homepage.dart';
import 'package:flutter_application/screens/settings/setting_page.dart';

class MainPage extends StatefulWidget {
  // const MainPage({Key? key, required User user})
  //     : _user = user,
  //       super(key: key);
  //
  // final User _user;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ChatPage(),
    HealthPage(),
    SettingPage(),


  ];

  final List<Widget> widgets = [
    HomePage(),
    ChatPage(),
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
            backgroundColor: Colors.lightGreenAccent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.lightGreenAccent

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart),
            label: 'Health',
            backgroundColor: Colors.lightGreenAccent

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
            backgroundColor: Colors.lightGreenAccent

          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Setting',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}