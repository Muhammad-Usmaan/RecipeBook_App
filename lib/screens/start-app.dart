import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipies_book/screens/home.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  int _currentView = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 245, 236, 1),

      body: _getCurrentView(),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentView,
          onTap: (value) {
            setState(() {
              _currentView = value;
            });
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color.fromRGBO(79, 108, 78, 1),
          showUnselectedLabels: true,
          unselectedIconTheme: IconThemeData(size: 22),
          selectedIconTheme: IconThemeData(size: 22),
          selectedLabelStyle:
              GoogleFonts.dosis(fontSize: 14, fontWeight: FontWeight.w600),
          unselectedLabelStyle:
              GoogleFonts.dosis(fontSize: 14, fontWeight: FontWeight.w600),
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.bookmark),
                icon: Icon(Icons.bookmark_outline),
                label: 'Saved'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.newspaper),
                icon: Icon(Icons.newspaper_outlined),
                label: 'Blog'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.account_circle),
                icon: Icon(Icons.account_circle_outlined),
                label: 'Account'),
          ]),
    );
  }

// Function to get the current view From bottom navigation
  _getCurrentView() {
    if (_currentView == 0) {
      return HomeView(); // Add Home View
    } else if (_currentView == 1) {
      return; // Add your saved view here
    } else if (_currentView == 2) {
      return; // Add your Blog view here
    } else {
      return; // Add your Account view here
    }
  }
}
