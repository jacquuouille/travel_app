import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screens/activity_screen.dart';
import 'package:travel_app/screens/restaurant_screen.dart';

import 'flight_screen.dart';
import 'hotel_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;

  final List _pages = const [
    ActivityScreen(), 
    HotelScreen(),
    FlightScreen(),
    RestaurantScreen(),
  ];

  _changedTab(int index) {
    setState( () {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
    Container( 
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft, 
          end: Alignment.topRight, 
          colors: [
            Theme.of(context).colorScheme.primary, 
            Theme.of(context).colorScheme.secondary, 
          ],
        ),
      ),
      child: Scaffold(
        appBar: const _CustomAppBar(), 
        body: _pages[_selectedTab],
        bottomNavigationBar: 
        BottomNavigationBar( 
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedTab, 
          showUnselectedLabels: false, 
          // selectedItemColor: Get.isDarkMode ? Colors.white : Colors.black,
          selectedItemColor: Get.isDarkMode ? Colors.white : Colors.black,
          onTap: (index) => _changedTab(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_activity), 
              label: 'Activity'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hotel), 
              label: 'Hotels'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flight_takeoff), 
              label: 'Flights'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant), 
              label: 'Restaurants'
            ),
          ]
            )
          ),
    );
  }
}


class _CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const _CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        title: Text(
          'TravelApp', 
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true, 
        elevation: 0, 
        actions: [
          IconButton(
            onPressed: () {
              Get.changeThemeMode(
                Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
              print(Get.isDarkMode);
            },
              icon: Icon(
                Get.isDarkMode ? Icons.dark_mode : Icons.light_mode,
              )
          )
        ]
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
