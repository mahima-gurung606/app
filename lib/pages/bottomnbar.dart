import 'package:app/data/davaiiiiii.dart';
import 'package:app/pages/aboutdavai.dart';
import 'package:app/pages/docshome.dart';
import 'package:app/pages/hospdetails.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List list = [
    DoctorsInfo(),
    PharmacyDetails(allDavai: allDavai[0]),
    Hospdetails(),
  ];
  List<Icon> items = [
    Icon(Icons.person_2),
    Icon(Icons.calendar_month),
    Icon(Icons.phone),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
        items: items,
      ),
    );
  }
}
