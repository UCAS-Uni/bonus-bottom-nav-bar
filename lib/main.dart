import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Selected Tab: $_selectedIndex',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 237, 231, 248),
        bottomNavigationBar: MoltenBottomNavigationBar(
          borderRaduis: BorderRadius.zero,
          domeCircleColor: Color.fromRGBO(216, 244, 181, 1),
          selectedIndex: _selectedIndex,
          barColor: Colors.white,
          domeHeight: 25,
          onTabChange: (clickedIndex) {
            setState(() {
              _selectedIndex = clickedIndex;
            });
          },
          tabs: [
            MoltenTab(
              icon: Icon(
                Icons.home,
                color: Color.fromRGBO(113, 196, 0, 1),
              ),
              title: Text('Home'),
            ),
            MoltenTab(
              icon: Icon(Icons.location_on),
              selectedColor: Colors.lightGreenAccent,
              title: Text('Address'),
            ),
            MoltenTab(
              icon: Icon(Icons.stacked_bar_chart),
              title: Text('My Order'),
              selectedColor: Colors.lightGreenAccent,
            ),
            MoltenTab(
              icon: Icon(Icons.call_outlined),
              selectedColor: Colors.lightGreenAccent,
              title: Text('Contact Us'),
            ),
          ],
        ),
      ),
    );
  }
}
