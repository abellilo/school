import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/calendar.dart';
import 'package:school/home.dart';

void main() {
  runApp(School());
}

class School extends StatefulWidget {
  @override
  _SchoolState createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  int _selectedItemIndex = 0;
  final List pages = [
    HomePage(),
    null,
    null,
    Calendar(),
    null
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Color(0xfff9f9fb),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.blueGrey[600]),
          currentIndex: _selectedItemIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
            setState(() {
              _selectedItemIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.insert_chart),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.done),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.calendar_today),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.chat_bubble_outline),
            ),
          ],
        ),
        body: pages[_selectedItemIndex],
      ),
    );
  }
}

