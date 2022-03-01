import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/ClassRoom.dart';
import 'package:flutter_application_1/Screens/Student.dart';
import 'package:flutter_application_1/Screens/Subject.dart';
import 'package:flutter_application_1/Screens/AddSubject.dart';
import 'package:flutter_application_1/Screens/AddStudent.dart';
import 'package:flutter_application_1/models/ClassDetails.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

ClassDetails _ClassDetails= ClassDetails();

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 1;
  List<Widget> _widgetOptions = <Widget>[
    Student(),
    Subject(),
    ClassRoom(),
    AddSubject(),
    AddStudent(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Student Management'),
          backgroundColor: Colors.redAccent),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.person_search),
                title: Text('Student'),
                backgroundColor: Colors.pinkAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.subject),
                title: Text('Subject'),
                backgroundColor: Colors.redAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text('Classroom'),
                backgroundColor: Colors.greenAccent),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_chart),
              title: Text('Add Subject'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              title: Text('Add Student'),
              backgroundColor: Colors.orangeAccent,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
