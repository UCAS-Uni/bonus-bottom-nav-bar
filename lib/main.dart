import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  Color selectedColor = const Color.fromRGBO(113, 196, 0, 1);
  Color unselectedColor = const Color(0xFFb9b9b9);
  TextStyle getStyle(int index) {
    return TextStyle(
      color: index == _selectedIndex
          ? const Color.fromRGBO(64, 117, 7, 1)
          : const Color(0xFFb9b9b9),
      fontSize: 13,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Selected Tab: $_selectedIndex',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 237, 231, 248),
        bottomNavigationBar: CustomBottomNavigationBar(
          borderRaduis: BorderRadius.zero,
          domeCircleColor: const Color.fromRGBO(216, 244, 181, 1),
          selectedIndex: _selectedIndex,
          barColor: Colors.white,
          barHeight: 60,
          domeHeight: 30,
          domeWidth: 200,
          domeCircleSize: 60,
          onTabChange: (clickedIndex) {
            setState(() {
              _selectedIndex = clickedIndex;
            });
          },
          tabs: [
            CustomTab(
              icon: const Icon(
                Icons.home,
              ),
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
              title: Text('Home', style: getStyle(0)),
            ),
            CustomTab(
              icon: const Icon(
                Icons.location_on,
              ),
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
              title: Text(
                'Address',
                style: getStyle(1),
              ),
            ),
            CustomTab(
              icon: const Icon(Icons.layers),
              title: Text('My Order', style: getStyle(2)),
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
            ),
            CustomTab(
              icon: const Icon(Icons.wifi_calling_3),
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
              title: Text('Contact Us', style: getStyle(3)),
            ),
          ],
        ),
      ),
    );
  }
}
