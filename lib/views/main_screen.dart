import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:muslim/views/widgets/askar_page.dart';
import 'package:muslim/views/widgets/quran_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomeViewState();
}

class _HomeViewState extends State<MainScreen> {
  int _currentIndex = 0;
  List pages = [
    QuranPage(),
    AskarPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: _currentIndex == 1 ? Colors.brown[100] : null,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.brown[900],
          unselectedItemColor: Colors.grey,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  FlutterIslamicIcons.quran2,
                  size: 30,
                ),
                label: "المصحف"),
            BottomNavigationBarItem(
                icon: Icon(
                  FlutterIslamicIcons.tasbihHand,
                  size: 30,
                ),
                label: "أذكار وأدعية"),
          ]),
      body: pages[_currentIndex],
    );
  }
}
