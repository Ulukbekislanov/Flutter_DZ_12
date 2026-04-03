import 'package:flutter/material.dart';
import 'package:flutter_application_10/appDrawer.dart';
import 'package:flutter_application_10/callPage.dart';
import 'package:flutter_application_10/chatPage.dart';
import 'package:flutter_application_10/contactPage.dart';
import 'package:flutter_application_10/settingsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    ChatPage(),
    CallPage(),
    ContactPage(),
    SettingsPage(),
  ];

  final List<String> _titles = ['Telegram', 'Звонки', 'Контакты', 'Настройки'];

  void _onSelectPage(int index) {
    setState(() => _currentIndex = index);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_currentIndex])),
      drawer: AppDrawer(onDestinationSelected: _onSelectPage),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF2AABEE),
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Чаты'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Звонки'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Контакты'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
        ],
      ),
    );
  }
}