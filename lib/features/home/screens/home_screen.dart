import 'package:flutter/material.dart';
import 'package:bosstify/features/profile/screens/profile_screen.dart';

import '../../home_body/screens/home_body_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of widgets to show in body
  final List<Widget> _screens = const [
    HomeBodyScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,



      // Dynamic Body based on selected tab
      body: _screens[_selectedIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          left: width * 0.05,
          right: width * 0.05,
          bottom: height * 0.015,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.1,
            vertical: height * 0.015,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.green.shade50, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 24,
                  color: _selectedIndex == 0 ? Colors.teal : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: _selectedIndex == 1 ? Colors.teal : Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
