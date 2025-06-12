import 'package:classwork_class/view/bottom_screen/about.dart';
import 'package:classwork_class/view/bottom_screen/cart.dart';
import 'package:classwork_class/view/bottom_screen/home.dart';
import 'package:classwork_class/view/bottom_screen/profile.dart';
import 'package:flutter/material.dart';

class DashboardScreenView extends StatefulWidget {
  const DashboardScreenView({super.key});

  @override
  State<DashboardScreenView> createState() => _DashboardScreenViewState();
}

class _DashboardScreenViewState extends State<DashboardScreenView> {

  int _selectedIndex = 0;
  List<Widget> lstbottom = [
    const HomeScreenView(),
    const CartScreenView(),
    const ProfileScreenView(),
    const AboutScreenView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard', 
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: lstbottom[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.album_outlined),
            label: 'About'
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),

    );
  }
}