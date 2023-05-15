import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
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
      child: const Scaffold(
        appBar: _CustomAppBar(), 
        bottomNavigationBar: _NavBar(),
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



class _NavBar extends StatelessWidget {
  const _NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false, 
      selectedItemColor: Get.isDarkMode ? Colors.white : Colors.black,
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
    );
  }
}