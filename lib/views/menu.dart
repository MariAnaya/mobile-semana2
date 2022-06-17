import 'package:flutter/material.dart';


import 'listFirebase.dart';

class Menu extends StatefulWidget{

  const Menu({Key? key}): super(key: key);

  @override

  _MenuS createState() => _MenuS();
}

class _MenuS extends State<Menu> {

int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
      
    ),
  
   CallFirebase(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Colors.blue[800],

        title: const Text('Car Wash'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar (
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_crash),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped
      ),
    );
  }
}