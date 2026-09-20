import 'package:flutter/material.dart';
import 'package:islamicapp/screens/Eza3a.dart';
import 'package:islamicapp/screens/sebha.dart';
import 'package:islamicapp/screens/quranTab.dart';
import 'package:islamicapp/screens/hadeethTab.dart';
import 'package:islamicapp/theme.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});
  static String id = 'homepage';

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    Ezaa(),
    Sebha(),
    quranTab(),
    Hadeeth()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'dark mode/dark_bg.png',
          fit: BoxFit.cover,
        ),
        _pages.elementAt(_selectedIndex),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.navyLight,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: AppColors.navyLight,
            icon: Image.asset('dark mode/icon_radio.png'),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('dark mode/icon_sebha.png'),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('dark mode/icon_quran.png'),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('dark mode/icon_hadeth.png'),
            label: 'Hadeeth',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: AppColors.gold,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
