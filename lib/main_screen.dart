import 'package:flutter/material.dart';
import 'package:flutter_my_portfolio/contact_screen.dart';
import 'package:flutter_my_portfolio/home_screen.dart';

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
            groupAlignment: -0.75,
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
                label: Text('Projects'),
                padding: EdgeInsets.symmetric(vertical: 8),
              ),
            ],
          ),
          Flexible(
            child: _selectedIndex == 0 ? HomeScreen() : ContactScreen(),
          ),
        ],
      ),
    );
  }

  void _setNavigationIndex(int index) => setState(() {
        _selectedIndex = index;
      });
}
