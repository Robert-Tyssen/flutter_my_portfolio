import 'package:flutter/material.dart';
import 'package:flutter_my_portfolio/contact_screen.dart';
import 'package:flutter_my_portfolio/home_screen.dart';
import 'package:flutter_my_portfolio/project_screen.dart';

import 'about_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: _setNavigationIndex,
            labelType: NavigationRailLabelType.none,
            groupAlignment: -1.0,
            destinations: const [
              // Home page
              NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home_rounded),
                label: Text('Home'),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),

              // About me page
              NavigationRailDestination(
                icon: Icon(Icons.person_outline_rounded),
                selectedIcon: Icon(Icons.person_rounded),
                label: Text('About Me'),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),

              // Projects page
              NavigationRailDestination(
                icon: Icon(Icons.work_outline_rounded),
                selectedIcon: Icon(Icons.work_rounded),
                label: Text('Projects'),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),

              // Contact me page
              NavigationRailDestination(
                icon: Icon(Icons.phone_outlined),
                selectedIcon: Icon(Icons.phone_rounded),
                label: Text('Contact'),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),
            ],
          ),
          Flexible(
            child: _getChildScreen(_selectedIndex),
          ),
        ],
      ),
    );
  }

  Widget _getChildScreen(int index) {
    switch (_selectedIndex) {
      case 0: return HomeScreen();
      case 1: return AboutScreen();
      case 2: return ProjectScreen();
      case 3: return ContactScreen();
      default: return ContactScreen();
    }
  }

  void _setNavigationIndex(int index) => setState(() {
        _selectedIndex = index;
      });
}
