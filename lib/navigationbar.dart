import 'package:flutter/material.dart';
import 'package:senior/chattt.dart';
import 'package:senior/home.dart';
import 'fakepharmacy.dart';
import 'pharmacy.dart';


class MyNavBar extends StatefulWidget {
  final List<Pharmacy> pharmacy = phr;
  @override
  _MyNavBarState createState() => _MyNavBarState();
  
}
List <Widget> _pages=[
 const Home(),
 const Chattt(),
];
class _MyNavBarState extends State<MyNavBar> {
  int _selectedPageIndex = 0;
  void _x1(int index){
   setState(() {
     _selectedPageIndex = index;
   });
  }
  
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: const Color.fromRGBO(16, 133, 127, 1),
      unselectedItemColor: Colors.grey,
      currentIndex: _selectedPageIndex,
      onTap: _x1,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
    
          icon: Icon(Icons.home,),
          
          label: 'Home',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt_outlined),
          label: 'Chat',
        ),
        
      ],
      ),
      
    ),
    );
  }
}