import 'package:flutter/material.dart';
import 'package:gawla/screens/NearPlaces.dart';
import 'package:gawla/screens/home_screen.dart';
import 'package:gawla/screens/hotelsDetails.dart';
import 'package:gawla/screens/hotelsScreen.dart';
import 'package:gawla/screens/searchScreen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;
  List<Widget> screens = [
    // Import your screens here
    const HomeScreen(),
    searchscreen(),
    Mapscreen(),
    Profile_screen(),
    HotelsScreen(),
    HotelsDetails(),
    NearPlaces(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home, size: 30),
            label: currentIndex == 0 ? 'Home' : '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search, size: 30),
            label: currentIndex == 1 ? 'Search' : '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.map, size: 30),
            label: currentIndex == 2 ? 'Maps' : '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person, size: 30),
            label: currentIndex == 3 ? 'Profile' : '',
            backgroundColor: Colors.white,
          ),
        ],
        selectedItemColor: const Color(0xFFFFCA28),
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
    );
  }
}

class Mapscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map Screen')),
      body: Center(child: Text('Map Screen Content')),
    );
  }
}

class Profile_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Screen')),
      body: Center(child: Text('Profile Screen Content')),
    );
  }
}
